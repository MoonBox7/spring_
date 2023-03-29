package com.jafa.domain;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter 
@Getter // 클래스 내의 모든 필드에 대해 Getter 메서드를 자동으로 생성
@ToString // 객체를 문자열로 표현
@AllArgsConstructor // 모든 필드를 인자로 받는 생성자를 자동으로 생성
@NoArgsConstructor // 인자가 없는 기본 생성자
@Builder // 빌더 패턴을 사용하여 객체를 생성
 // @FieldMatch 어노테이션은 비밀번호와 비밀번호 확인 필드의 값이 일치하는지 검증하기 위한 커스텀 어노테이션
public class MemberDTO {
	
	@NotBlank(message = "아이디는 필수 항목입니다.") // @NotBlank: 어노테이션은 해당 필드가 비어 있지 않아야 함을 나타냅니다. 즉, 해당 필드에 공백이나 null 값이 들어갈 수 없습니다. 이 어노테이션은 주로 문자열 필드에 사용됩니다.
	@Length(min = 4, max = 16, message = "아이디는 4~16자이어야 합니다.") // @Length: 어노테이션은 문자열의 길이 제한을 설정할 때 사용됩니다. min과 max 파라미터를 이용하여 문자열의 최소 길이와 최대 길이를 지정할 수 있습니다. 만약 문자열의 길이가 범위 밖이면, 유효성 검사가 실패하고 메시지를 반환합니다.
	private String memberId;
	private String memberName;
	
	@Pattern(regexp = "") // @Pattern: 어노테이션은 정규식 패턴을 이용하여 문자열이 특정 패턴과 일치하는지 확인할 때 사용됩니다. regexp 파라미터를 이용하여 패턴을 지정하며, 만약 문자열이 패턴과 일치하지 않으면 유효성 검사가 실패하고 메시지를 반환합니다.
	private String password;
	private String confirmPassword;
	
	@Email(message = "올바른 이메일 형식이 아닙니다.")// @Email: 어노테이션은 문자열이 이메일 주소 형식인지 확인할 때 사용됩니다. 이메일 주소의 형식은 사용자 이름, '@' 기호, 도메인 이름으로 이루어져 있습니다. 만약 문자열이 이메일 주소 형식과 일치하지 않으면 유효성 검사가 실패하고 메시지를 반환합니다.
	@NotBlank(message = "이메일은 필수항목 입니다")
	private String email;
	private String phoneNumber;
}

// 
