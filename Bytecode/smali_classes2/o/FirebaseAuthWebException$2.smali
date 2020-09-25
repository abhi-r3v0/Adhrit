.class final Lo/FirebaseAuthWebException$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseAuthWebException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/FirebaseAuthWebException;


# direct methods
.method constructor <init>(Lo/FirebaseAuthWebException;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lo/FirebaseAuthWebException$2;->extraCallback:Lo/FirebaseAuthWebException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1073
    iget-object v0, p0, Lo/FirebaseAuthWebException$2;->extraCallback:Lo/FirebaseAuthWebException;

    .line 1172
    iget-boolean v1, v0, Lo/FirebaseAuthWebException;->updateVisuals:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 2143
    invoke-virtual {v0, v1, v2}, Lo/FirebaseAuthWebException;->extraCallback(ZZ)V

    .line 1074
    iget-object v0, p0, Lo/FirebaseAuthWebException$2;->extraCallback:Lo/FirebaseAuthWebException;

    iget-boolean v0, v0, Lo/FirebaseAuthWebException;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lo/FirebaseAuthWebException$2;->extraCallback:Lo/FirebaseAuthWebException;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAuthWebException;->onPostMessage(I)V

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
