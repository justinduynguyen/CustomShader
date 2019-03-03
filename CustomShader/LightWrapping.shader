Shader "Custom/LightWrappingPBR"
{
   Properties
   {
   	   _Color("Color",Color)=(1,1,1,1)
	   _Bump("Bump Map",2D)="white" {}
	   _MainTex("Diffuse Map",2D) ="white" {}
	   _LightingWrap("Light Wraping",Range(0,2))=1
	   _LightInfluence("Light Influencing",Range(0,1.5))=0.5
	   _Specular ("Specular",Range(0,1))=0.5
	   _Gloss("Gloss",Range(0,1))=0.5
	   _AO("Occlusion Map",2D)="white" {}
   }
  SubShader
   {
   Pass
   {
   
	      Tags { "RenderType"="Opaque" "LightMode"="ForwardBase"  }
	      CGPROGRAM
	      #pragma vertex vert
		  #pragma fragment frag
		  #pragma multi_compile_fwdbase
		  #include "UnityCG.cginc"
		  #include "Lighting.cginc"
		  #include "AutoLight.cginc"
		    half4 _Color;
			float _Specular;
			sampler2D _Bump,_MainTex,_AO;
			float _LightingWrap,_Smoothing;
			float _LightInfluence,_Gloss;
		  struct Input
		  {
		     float2 uv_Bump :TEXCOORD0;
		     float4 vertex:POSITION;
			 float3 normal:NORMAL;
			 float3 tangent:TANGENT;
		  };
		  struct Output
		  {
		    float4 pos:SV_POSITION;
			float3 normalDir :TEXCOORD0;
			float2 uv_Bump:TEXCOORD4;
			float3 tangentdir:TEXCOORD1;
			float3 viewDir:TEXCOORD2;
			float4 posWorld:TEXCOORD3;
			LIGHTING_COORDS(5,6) // textcoord lighting/shadow
		  };
		
		  Output vert(Input i)
		  {
		        Output o;
				o.posWorld=mul(unity_ObjectToWorld,i.vertex);
		        o.pos=UnityObjectToClipPos(i.vertex);
				o.viewDir  = normalize(_WorldSpaceCameraPos-o.posWorld).xyz;
				o.normalDir =normalize(mul(unity_ObjectToWorld,i.normal));
				o.tangentdir=normalize(mul(unity_ObjectToWorld,i.tangent));
			    o.uv_Bump=i.uv_Bump;
			    TRANSFER_VERTEX_TO_FRAGMENT(o); 
			    return o;
			
		  }
		  half4 frag(Output i) : COLOR
		  {
		   // transformTangentspace
		   float3 bioNormal=cross(i.normalDir,i.tangentdir);	     
		   float3x3 transformTangent = float3x3(i.tangentdir,bioNormal,i.normalDir);
		   float3 normalMap =UnpackNormal(tex2D (_Bump,i.uv_Bump));
		   normalMap=mul(normalMap,transformTangent);
		     // Gloss
		   float specPow = exp2( _Gloss * 10.0 + 1.0 );
            // Specular
		   float3 halfDirection=normalize(i.viewDir+normalMap);
		   float3 specularColor = float3(_Specular,_Specular,_Specular);
           float3 directSpecular = pow(max(0,dot(halfDirection,normalMap)),specPow)*specularColor;
           float3 specular = directSpecular;
		   if( dot(normalize(_WorldSpaceLightPos0-i.posWorld),normalMap) <= 0 )specular=float3(0,0,0);
		   
		  float4 texColor = tex2D(_MainTex,i.uv_Bump)*_LightColor0;
		  //Diffuse
 		  float4  diffuseIntensity =_LightInfluence + max(0,dot(normalize(_WorldSpaceLightPos0-i.posWorld),normalMap))*_LightingWrap;
	      float4   diffuseColor = diffuseIntensity*texColor*_Color;
		  // AO
		  float4 AO=tex2D(_AO,i.uv_Bump);
		  

		  return  diffuseColor*AO*LIGHT_ATTENUATION(i) + float4(specular,1)+UNITY_LIGHTMODEL_AMBIENT;
		  }

	      ENDCG
   }
    
   }
   // if this hardware  then try using  another shader 
   FallBack "Diffuse" 
}