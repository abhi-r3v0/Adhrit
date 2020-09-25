.class final Lo/verifyPasswordResetCode$4;
.super Lo/containsKey$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/verifyPasswordResetCode;->ICustomTabsCallback(Landroid/content/Context;Lo/confirmPasswordReset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/verifyPasswordResetCode;

.field private synthetic onMessageChannelReady:Lo/confirmPasswordReset;


# direct methods
.method constructor <init>(Lo/verifyPasswordResetCode;Lo/confirmPasswordReset;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lo/verifyPasswordResetCode$4;->extraCallback:Lo/verifyPasswordResetCode;

    iput-object p2, p0, Lo/verifyPasswordResetCode$4;->onMessageChannelReady:Lo/confirmPasswordReset;

    invoke-direct {p0}, Lo/containsKey$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/graphics/Typeface;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lo/verifyPasswordResetCode$4;->extraCallback:Lo/verifyPasswordResetCode;

    iget v1, v0, Lo/verifyPasswordResetCode;->onNavigationEvent:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1046
    iput-object p1, v0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    .line 181
    iget-object p1, p0, Lo/verifyPasswordResetCode$4;->extraCallback:Lo/verifyPasswordResetCode;

    const/4 v0, 0x1

    .line 2046
    iput-boolean v0, p1, Lo/verifyPasswordResetCode;->ICustomTabsCallback$Stub:Z

    .line 182
    iget-object p1, p0, Lo/verifyPasswordResetCode$4;->onMessageChannelReady:Lo/confirmPasswordReset;

    iget-object v0, p0, Lo/verifyPasswordResetCode$4;->extraCallback:Lo/verifyPasswordResetCode;

    .line 3046
    iget-object v0, v0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p1, v0, v1}, Lo/confirmPasswordReset;->extraCallback(Landroid/graphics/Typeface;Z)V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 2

    .line 187
    iget-object v0, p0, Lo/verifyPasswordResetCode$4;->extraCallback:Lo/verifyPasswordResetCode;

    const/4 v1, 0x1

    .line 4046
    iput-boolean v1, v0, Lo/verifyPasswordResetCode;->ICustomTabsCallback$Stub:Z

    .line 188
    iget-object v0, p0, Lo/verifyPasswordResetCode$4;->onMessageChannelReady:Lo/confirmPasswordReset;

    invoke-virtual {v0, p1}, Lo/confirmPasswordReset;->onPostMessage(I)V

    return-void
.end method
