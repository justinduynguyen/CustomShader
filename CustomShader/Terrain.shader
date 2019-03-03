// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:34676,y:32237,varname:node_4013,prsc:2|diff-1137-OUT,normal-7506-OUT;n:type:ShaderForge.SFN_Lerp,id:1390,x:32786,y:32821,varname:node_1390,prsc:2|A-8321-RGB,B-7769-RGB,T-7190-OUT;n:type:ShaderForge.SFN_Tex2d,id:8321,x:31545,y:32649,ptovrint:False,ptlb:Normal_1,ptin:_Normal_1,varname:node_8321,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a1774a605d1b4b84ca166b49ca2da519,ntxv:3,isnm:True|UVIN-4466-OUT;n:type:ShaderForge.SFN_Tex2d,id:7769,x:31545,y:32829,ptovrint:False,ptlb:Normal_2,ptin:_Normal_2,varname:node_7769,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2119-OUT;n:type:ShaderForge.SFN_Tex2d,id:1158,x:31486,y:33047,ptovrint:False,ptlb:DetailMask,ptin:_DetailMask,varname:node_1158,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7b8891950244b604e97fb2ee935e8167,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Power,id:1921,x:31847,y:32939,varname:node_1921,prsc:2|VAL-1158-RGB,EXP-3385-OUT;n:type:ShaderForge.SFN_Slider,id:3385,x:31407,y:33291,ptovrint:False,ptlb:MaskDetailMask,ptin:_MaskDetailMask,varname:node_3385,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.62893,max:5;n:type:ShaderForge.SFN_Multiply,id:7190,x:32127,y:32898,varname:node_7190,prsc:2|A-1921-OUT,B-848-OUT;n:type:ShaderForge.SFN_Slider,id:848,x:31785,y:33138,ptovrint:False,ptlb:HighDetailMask,ptin:_HighDetailMask,varname:node_848,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.504617,max:5;n:type:ShaderForge.SFN_TexCoord,id:1443,x:30614,y:32624,varname:node_1443,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:7663,x:30851,y:32624,varname:node_7663,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1443-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4466,x:31170,y:32679,varname:node_4466,prsc:2|A-7663-OUT,B-9200-OUT;n:type:ShaderForge.SFN_Slider,id:9200,x:30794,y:32871,ptovrint:False,ptlb:Tiled_1,ptin:_Tiled_1,varname:node_9200,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:48.55102,max:100;n:type:ShaderForge.SFN_TexCoord,id:861,x:30578,y:33074,varname:node_861,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:3869,x:30843,y:33030,varname:node_3869,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-861-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2119,x:31183,y:32964,varname:node_2119,prsc:2|A-3869-OUT,B-7873-OUT;n:type:ShaderForge.SFN_Slider,id:7873,x:30915,y:33215,ptovrint:False,ptlb:Tiled_2,ptin:_Tiled_2,varname:node_7873,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:47.00855,max:100;n:type:ShaderForge.SFN_Lerp,id:1927,x:33126,y:32225,varname:node_1927,prsc:2|A-7099-OUT,B-4701-OUT,T-7190-OUT;n:type:ShaderForge.SFN_Tex2d,id:6063,x:31878,y:32259,ptovrint:False,ptlb:Detail_1,ptin:_Detail_1,varname:node_6063,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4466-OUT;n:type:ShaderForge.SFN_Tex2d,id:7546,x:31821,y:32478,ptovrint:False,ptlb:Detail_2,ptin:_Detail_2,varname:node_7546,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2119-OUT;n:type:ShaderForge.SFN_Multiply,id:7099,x:32715,y:32197,varname:node_7099,prsc:2|A-6063-RGB,B-9418-OUT,C-6004-RGB;n:type:ShaderForge.SFN_Multiply,id:4701,x:32466,y:32580,varname:node_4701,prsc:2|A-7546-RGB,B-5420-OUT,C-5279-RGB;n:type:ShaderForge.SFN_Slider,id:9418,x:32051,y:32325,ptovrint:False,ptlb:Detail_1Power,ptin:_Detail_1Power,varname:node_9418,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Slider,id:5420,x:31978,y:32626,ptovrint:False,ptlb:Detail_2Power,ptin:_Detail_2Power,varname:node_5420,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2846268,max:5;n:type:ShaderForge.SFN_Color,id:6004,x:32388,y:32398,ptovrint:False,ptlb:Color_1,ptin:_Color_1,varname:node_6004,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:5279,x:32162,y:32713,ptovrint:False,ptlb:Color_2,ptin:_Color_2,varname:_Color_2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:1137,x:34183,y:32315,varname:node_1137,prsc:2|A-1927-OUT,B-4920-OUT,T-399-OUT;n:type:ShaderForge.SFN_Tex2d,id:7684,x:33036,y:32407,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_7684,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ViewPosition,id:3193,x:32371,y:32971,varname:node_3193,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:1965,x:32371,y:33111,varname:node_1965,prsc:2;n:type:ShaderForge.SFN_Distance,id:4972,x:32836,y:32998,varname:node_4972,prsc:2|A-3193-XYZ,B-1965-XYZ;n:type:ShaderForge.SFN_Divide,id:4179,x:33041,y:32964,varname:node_4179,prsc:2|A-4972-OUT,B-224-OUT;n:type:ShaderForge.SFN_Slider,id:224,x:32607,y:33197,ptovrint:False,ptlb:Distance,ptin:_Distance,varname:node_224,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:8.766367,max:500;n:type:ShaderForge.SFN_Clamp01,id:399,x:33433,y:32951,varname:node_399,prsc:2|IN-4179-OUT;n:type:ShaderForge.SFN_Multiply,id:4920,x:33752,y:32372,varname:node_4920,prsc:2|A-7684-RGB,B-8770-OUT,C-3887-RGB;n:type:ShaderForge.SFN_Slider,id:8770,x:32958,y:32627,ptovrint:False,ptlb:PowerMain,ptin:_PowerMain,varname:node_8770,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Color,id:3887,x:33460,y:32555,ptovrint:False,ptlb:ColorMain,ptin:_ColorMain,varname:node_3887,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:7506,x:34128,y:32616,varname:node_7506,prsc:2|A-1390-OUT,B-8094-RGB,T-399-OUT;n:type:ShaderForge.SFN_Tex2d,id:8094,x:33266,y:32839,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_8094,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;proporder:8321-7769-1158-3385-848-9200-7873-6063-7546-9418-5420-6004-5279-7684-224-8770-3887-8094;pass:END;sub:END;*/

Shader "Shader Forge/Terrain" {
    Properties {
        _Normal_1 ("Normal_1", 2D) = "bump" {}
        _Normal_2 ("Normal_2", 2D) = "white" {}
        _DetailMask ("DetailMask", 2D) = "white" {}
        _MaskDetailMask ("MaskDetailMask", Range(0, 5)) = 2.62893
        _HighDetailMask ("HighDetailMask", Range(0, 5)) = 2.504617
        _Tiled_1 ("Tiled_1", Range(0, 100)) = 48.55102
        _Tiled_2 ("Tiled_2", Range(0, 100)) = 47.00855
        _Detail_1 ("Detail_1", 2D) = "white" {}
        _Detail_2 ("Detail_2", 2D) = "white" {}
        _Detail_1Power ("Detail_1Power", Range(0, 5)) = 0
        _Detail_2Power ("Detail_2Power", Range(0, 5)) = 0.2846268
        _Color_1 ("Color_1", Color) = (0.5,0.5,0.5,1)
        _Color_2 ("Color_2", Color) = (0.5,0.5,0.5,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _Distance ("Distance", Range(0, 500)) = 8.766367
        _PowerMain ("PowerMain", Range(0, 5)) = 0
        _ColorMain ("ColorMain", Color) = (0.5,0.5,0.5,1)
        _Normal ("Normal", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
	
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #define UNITY_PASS_FORWARDBASE
             #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Normal_1; 
			uniform float4 _Normal_1_ST;
            uniform sampler2D _Normal_2;
			uniform float4 _Normal_2_ST;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _MaskDetailMask;
            uniform float _HighDetailMask;
            uniform float _Tiled_1;
            uniform float _Tiled_2;
            uniform sampler2D _Detail_1; uniform float4 _Detail_1_ST;
            uniform sampler2D _Detail_2; uniform float4 _Detail_2_ST;
            uniform float _Detail_1Power;
            uniform float _Detail_2Power;
            uniform float4 _Color_1;
            uniform float4 _Color_2;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Distance;
            uniform float _PowerMain;
            uniform float4 _ColorMain;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6) // texcoord for shadwow/lightmap
                UNITY_FOG_COORDS(7) // texcoord for fog 
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
				// Pass uv textcoord
                o.uv0 = v.texcoord0;
				// transform object space to world space of normal vector
                o.normalDir = UnityObjectToWorldNormal(v.normal);
				// Get tangent vector 
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                // get bio tanger vector
				o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                //// transform object space to world space of vertices
				o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                // Tranform position of vertices in  model view project space
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
				// Get view direction 
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
				// get uv for detail map
                float2 v1 = ((i.uv0*2.0+-1.0)*_Tiled_1);
				// get Normal vector from normal map
                float3 _Normal_1_var = UnpackNormal(tex2D(_Normal_1,TRANSFORM_TEX(v1, _Normal_1)));
                float2 v4 = ((i.uv0*2.0+-1.0)*_Tiled_2);
                float4 _Normal_2_var = tex2D(_Normal_2,TRANSFORM_TEX(v4, _Normal_2));
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
                float3 v3 = (pow(_DetailMask_var.rgb,_MaskDetailMask)*_HighDetailMask);
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
				// get distance between camera postion and object postion in world space for using interporlate  
                float v2 = saturate((distance(_WorldSpaceCameraPos,i.posWorld.rgb)/_Distance));
				// interporlate normal maps by using distance  between camera postion and object postion in world space
                float3 normalLocal = lerp(lerp(_Normal_1_var.rgb,_Normal_2_var.rgb,v3),_Normal_var.rgb,v2);
				// Get normal direction 
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
				// Get light direction
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
				// Get light color
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i); // get shadow on surface
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                 // Dot product of normal and light direction to get power of diffuse light
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
				// Diffuse light
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
				// Pass uv form input vert to fragment
                float4 _Detail_1_var = tex2D(_Detail_1,TRANSFORM_TEX(v1, _Detail_1));
                float4 _Detail_2_var = tex2D(_Detail_2,TRANSFORM_TEX(v4, _Detail_2));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
				// Tranform diffuse color from maintex to detail by using linear interporlate distance between  camera postion and object postion in world space
                float3 diffuseColor = lerp(lerp((_Detail_1_var.rgb*_Detail_1Power*_Color_1.rgb),(_Detail_2_var.rgb*_Detail_2Power*_Color_2.rgb),v3),(_MainTex_var.rgb*_PowerMain*_ColorMain.rgb),v2);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
     
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Normal_1; 
			uniform float4 _Normal_1_ST;
            uniform sampler2D _Normal_2;
			uniform float4 _Normal_2_ST;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _MaskDetailMask;
            uniform float _HighDetailMask;
            uniform float _Tiled_1;
            uniform float _Tiled_2;
            uniform sampler2D _Detail_1; uniform float4 _Detail_1_ST;
            uniform sampler2D _Detail_2; uniform float4 _Detail_2_ST;
            uniform float _Detail_1Power;
            uniform float _Detail_2Power;
            uniform float4 _Color_1;
            uniform float4 _Color_2;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Distance;
            uniform float _PowerMain;
            uniform float4 _ColorMain;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
				// Pass uv textcoord
                o.uv0 = v.texcoord0;
				// transform object space to world space of normal vector
                o.normalDir = UnityObjectToWorldNormal(v.normal);
				// Get tangent vector 
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                // get bio tanger vector
				o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                //// transform object space to world space of vertices
				o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                // Tranform position of vertices in  model view project space
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
				// Get view direction 
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
				// get uv for detail map
                float2 v1 = ((i.uv0*2.0+-1.0)*_Tiled_1);
				// get Normal vector from normal map
                float3 _Normal_1_var = UnpackNormal(tex2D(_Normal_1,TRANSFORM_TEX(v1, _Normal_1)));
                float2 v4 = ((i.uv0*2.0+-1.0)*_Tiled_2);
                float4 _Normal_2_var = tex2D(_Normal_2,TRANSFORM_TEX(v4, _Normal_2));
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
                float3 v3 = (pow(_DetailMask_var.rgb,_MaskDetailMask)*_HighDetailMask);
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
				// get distance between camera postion and object postion in world space for using interporlate  
                float v2 = saturate((distance(_WorldSpaceCameraPos,i.posWorld.rgb)/_Distance));
				// interporlate normal maps by using distance  between camera postion and object postion in world space
                float3 normalLocal = lerp(lerp(_Normal_1_var.rgb,_Normal_2_var.rgb,v3),_Normal_var.rgb,v2);
				// Get normal direction 
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
				// Get light direction
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
				// Get light color
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                 // Dot product of normal and light direction to get power of diffuse light
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
				// Diffuse light
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
				// Pass uv form input vert to fragment
                float4 _Detail_1_var = tex2D(_Detail_1,TRANSFORM_TEX(v1, _Detail_1));
                float4 _Detail_2_var = tex2D(_Detail_2,TRANSFORM_TEX(v4, _Detail_2));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
				// Tranform diffuse color from maintex to detail by using linear interporlate distance between  camera postion and object postion in world space
                float3 diffuseColor = lerp(lerp((_Detail_1_var.rgb*_Detail_1Power*_Color_1.rgb),(_Detail_2_var.rgb*_Detail_2Power*_Color_2.rgb),v3),(_MainTex_var.rgb*_PowerMain*_ColorMain.rgb),v2);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "TerrainShader"
}
