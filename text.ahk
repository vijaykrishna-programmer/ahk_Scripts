

NewString := "https://youtu.be/zIJge7512iI?list=PL7RwmzKKAH8eKbDpOe5e-Omfp2Zqed6U1&t=44"

word_array := StrSplit(NewString, "=")

index := word_array.MaxIndex()

MsgBox % word_array[index]
