.class final Lo/getProviderData;
.super Lo/FirebaseAuthWeakPasswordException;
.source ""


# direct methods
.method constructor <init>(Lo/FirebaseAuthWebException;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lo/FirebaseAuthWeakPasswordException;-><init>(Lo/FirebaseAuthWebException;)V

    return-void
.end method


# virtual methods
.method final extraCallback()V
    .locals 2

    .line 31
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/FirebaseAuthWebException;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    invoke-virtual {v0, v1}, Lo/FirebaseAuthWebException;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    invoke-virtual {v0, v1}, Lo/FirebaseAuthWebException;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
