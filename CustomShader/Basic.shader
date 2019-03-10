Shader "Basic"
{
    Properties 
	{
		_MainTex("Albedo",2D)="white" {}
		_Tint("Tint",Color)=(1,1,1,1)
	}
	SubShader
	{
		Pass
		{
		   CGPROGRAM
		    #pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			half4 _Tint;
			sampler2D _MainTex ;
            struct VertexInput
			{
			   float4 vertex :POSITION;
			   float4 color:COLOR0;
			   float2 uv :TEXCOORD0;
			};
			struct VertexOutput 
			{
			 float4 pos :SV_POSITION;
			 float4 color:COLOR0;
			 float2 uv :TEXCOORD0;
			};
		   VertexOutput vert(VertexInput i)
			{
			  VertexOutput o;
			  o.pos=UnityObjectToClipPos(i.vertex);
			  o.color=i.color;
			  o.uv=i.uv;
			  return o;
			}
			half4 frag (VertexOutput i) :COLOR
			{
			   half4 albedo = tex2D(_MainTex,i.uv);
			   half4 color  = _Tint*i.color*albedo;
			   return  color;
			}
		   ENDCG
		}
	}
}