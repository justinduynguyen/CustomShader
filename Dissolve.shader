Shader "Dissolve"
{
Properties
{
	_Noise("Noise",2D)="white" {}
	_Clip("Clip",Range(-1,1))=1
	[HDR]_Color("Color",Color)=(1,1,1,1)
	_Step("Step",Float)=0
	_MainTex("Diffuse",2D)="white" {}
}
 SubShader
 {
    Pass
	{   
	     //	Zwrite off
		// Cull off // neu muon nhin xuyen thi bo comment nhe 
	     Tags {"LightMode"="ForwardBase" }
		 CGPROGRAM
		  #pragma vertex vert
		  #pragma fragment frag
		  #pragma multi_complile_fwdbbase
		  #include "UnityCG.cginc"
		  sampler2D _Noise,_MainTex;
          float _Clip;
		  struct input{
		    float4 vertex :POSITION;
			float2 uv :TEXCOORD0;
		  };
		  struct output
		  {
		    float4 pos:SV_POSITION;
			float2 uv:TEXCOORD0;
		  };
		  output vert (input i)
		  {
		      output o;
			  o.uv=i.uv;
			  o.pos=UnityObjectToClipPos(i.vertex);
		  	  return o;
		  }
		  half4 _Color;
		  float _Step;
		  half4 frag(output i):COLOR
		  {
		       half4 dissove =tex2D(_Noise,i.uv)*2-1;
			   float4 c = dissove -_Clip;			 
			   half4 emissive=step(c,_Step);   
               clip(c);
		  	  return tex2D(_MainTex,i.uv)+emissive*_Color;
		  }
		ENDCG

	}
	//Muon nhan shawdow thi bo comment
	
	  Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
        //    #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
		
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster     
           #include "UnityCG.cginc"
		  sampler2D _Noise,_MainTex;
          float _Clip;
		  struct input{
		    float4 vertex :POSITION;
			float2 uv :TEXCOORD0;
		  };
		  struct output
		  {
		     V2F_SHADOW_CASTER;	
			float2 uv:TEXCOORD0;
		  };
		  output vert (input i)
		  {

		      output o;
			  o.uv=i.uv;
			  o.pos=UnityObjectToClipPos(i.vertex);

		  	  return o;
		  }
		  half4 _Color;
		  float _Step;
		  half4 frag(output i):COLOR
		  {
		       half4 dissove =tex2D(_Noise,i.uv)*2-1;
			   float4 c = dissove -_Clip;			 
			   half4 emissive=step(c,_Step);   
               clip(c);
			   return tex2D(_MainTex,i.uv)+emissive*_Color;
			   SHADOW_CASTER_FRAGMENT(i);		  	
		  }
		ENDCG
        }
    
 }
 FallBack "Diffuse"
}