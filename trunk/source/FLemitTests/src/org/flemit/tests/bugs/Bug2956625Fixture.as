package org.flemit.tests.bugs
{
	import flash.utils.getDefinitionByName;
	
	import org.flemit.reflection.Type;
	import org.flexunit.Assert;
	
	public class Bug2956625Fixture
	{
		public function Bug2956625Fixture()
		{
		}
		
		[Test(message="This test will fail in pre-FP10")]
		public function test_gettype_for_vector_of_t_returns_vector_of_t() : void
		{
			var vectorTypeName : String = "__AS3__.vec::Vector.<String>";
			
			var vectorType : Class = getDefinitionByName(vectorTypeName) as Class;
			
			var instance : Object = new vectorType();
			
			var type : Type = Type.getType(instance);
			
			Assert.assertEquals("Unexpected data written to output", "Vector.<String>", type.name);
		}
	}
}