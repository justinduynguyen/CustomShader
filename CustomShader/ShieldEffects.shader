
Shader "Shield_Tutor" {
    Properties {
        [HideInInspector]_oMin ("oMin", Float ) = 0
        [HideInInspector]_oMax ("oMax", Float ) = 1
        [HideInInspector]_Offset ("Offset", Float ) = 0.2
        _Scale ("Scale", Range(0, 1)) = 0.1
        _Out ("Out", 2D) = "white" {}
        _ScalePoly ("ScalePoly", Range(0, 3)) = 0.5
        _In ("In", 2D) = "black" {}
        _EffectTrans ("EffectTrans", Range(-4, 5)) = 2
        _Frequency ("Frequency", Range(0, 20)) = 20
        _Speed ("Speed", Range(0, 10)) = 3
        _SpeedEffect ("SpeedEffect", Range(0, 10)) = 2
        _Transparent ("Transparent", Range(0, 1)) = 1
        _Emission ("Emission", Range(0, 20)) = 5
        [HDR]_Color ("Color", Color) = (0,0.75,1,1)
        _Two ("Two", Color) = (0.16,0,1,1)
        _One ("One", Color) = (1,0,0,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _oMin;
            uniform float _oMax;
            uniform float _Offset;
            uniform float _Scale;
            uniform sampler2D _Out; uniform float4 _Out_ST;
            uniform float _ScalePoly;
            uniform sampler2D _In; uniform float4 _In_ST;
            uniform float _EffectTrans;
            uniform float _Frequency;
            uniform float _Speed;
            uniform float _SpeedEffect;
            uniform float _Transparent;
            uniform float _Emission;
            uniform float4 _Color;
            uniform float4 _Two;
            uniform float4 _One;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 moreSpeed = _Time + _TimeEditor;
                float sinSpeed = sin((moreSpeed.g*_Speed));
                float offset = (_Offset+sinSpeed);
                float transform = saturate((_oMin + ( (o.uv0.g - offset) * (_oMax - _oMin) ) / (sinSpeed - offset)));
                float3 transformMax = mul( unity_WorldToObject, float4(mul(unity_ObjectToWorld, v.vertex).rgb,0) ).xyz;
                v.vertex.xyz += ((v.normal*transform*_Scale)+((v.normal - ( transformMax.rgb * dot(v.normal, transformMax.rgb)/dot( transformMax.rgb, transformMax.rgb)))*transform*_ScalePoly));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 speedTime = _Time + _TimeEditor;
                float finalSpeed = (i.uv0.g+cos((((speedTime.g*_SpeedEffect)*_EffectTrans)+(i.uv0.g*_Frequency))));
                float4 _In_var = tex2D(_In,TRANSFORM_TEX(i.uv2, _In));
                float3 emssionColor = (_Emission*_Color.rgb);
                float4 _Out_var = tex2D(_Out,TRANSFORM_TEX(i.uv2, _Out));
                float t = (1.0 - finalSpeed);
                float3 k = ((_Out_var.rgb*emssionColor*finalSpeed)*t);
                float3 h = lerp((_In_var.rgb*emssionColor*finalSpeed*k),k,isFrontFace);
                float3 emissive = (((finalSpeed*_Two.rgb)+h)+h+(_One.rgb*t));
                float3 finalColor = emissive;
                return fixed4(finalColor,_Transparent);
            }
            ENDCG
        }
    
    }
    FallBack "Diffuse"
   
}
