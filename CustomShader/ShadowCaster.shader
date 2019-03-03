// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/SolidColor" {
Properties
	{
		_Color ("Colored Shadow",Color)=(1,1,1,1)
	}
    SubShader {
	
        Pass {
         
         
            Tags { "LightMode" = "ForwardBase" }
         
            CGPROGRAM
 
            #pragma vertex vert
            #pragma fragment frag
			#pragma multi_compile_fwdbase
			
            #include "UnityCG.cginc"
			#include "AutoLight.cginc"
			#include "Lighting.cginc"
			float4 _Color;
             struct input
			 {
			  float4 vertex :POSITION;
			 
			 };
			 struct output
			 {
			   float4 pos :SV_POSITION;
			   float4 posWorld:TEXCOORD0;
			   LIGHTING_COORDS(1,2)
			 };
			output vert(input i) 
			{
			    
				output o;
				o.posWorld=mul(unity_ObjectToWorld,i.vertex);
				o.pos =UnityObjectToClipPos(i.vertex);
				TRANSFER_VERTEX_TO_FRAGMENT(o);
				return o;
			}
			half4 frag(output i):COLOR
			{
			 float atten=LIGHT_ATTENUATION(i);
			 float atten1 = SHADOW_ATTENUATION(i);
			
			 return float4(1,1,1,1)*atten*_LightColor0+_Color*(1-atten1);
			}
			ENDCG
           }

		   }
		   FallBack "Diffuse"
}