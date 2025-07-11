<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateUserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'name' => 'required|max:100|min:3',
            'email' => 'required|email|unique:users,email,' . $this->user->id,
            'phone' => 'nullable|numeric',
            'roles' => 'required|string|in:Admin,User,Staff', // assuming roles can be Admin, User, or Staff
        ];
    }
}
