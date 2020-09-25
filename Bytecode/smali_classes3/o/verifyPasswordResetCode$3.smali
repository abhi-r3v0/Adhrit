.class final Lo/verifyPasswordResetCode$3;
.super Lo/confirmPasswordReset;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/verifyPasswordResetCode;->extraCallback(Landroid/content/Context;Landroid/text/TextPaint;Lo/confirmPasswordReset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/verifyPasswordResetCode;

.field private synthetic onMessageChannelReady:Landroid/text/TextPaint;

.field private synthetic onNavigationEvent:Lo/confirmPasswordReset;


# direct methods
.method constructor <init>(Lo/verifyPasswordResetCode;Landroid/text/TextPaint;Lo/confirmPasswordReset;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lo/verifyPasswordResetCode$3;->extraCallback:Lo/verifyPasswordResetCode;

    iput-object p2, p0, Lo/verifyPasswordResetCode$3;->onMessageChannelReady:Landroid/text/TextPaint;

    iput-object p3, p0, Lo/verifyPasswordResetCode$3;->onNavigationEvent:Lo/confirmPasswordReset;

    invoke-direct {p0}, Lo/confirmPasswordReset;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/graphics/Typeface;Z)V
    .locals 2

    .line 226
    iget-object v0, p0, Lo/verifyPasswordResetCode$3;->extraCallback:Lo/verifyPasswordResetCode;

    iget-object v1, p0, Lo/verifyPasswordResetCode$3;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lo/verifyPasswordResetCode;->onNavigationEvent(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 227
    iget-object v0, p0, Lo/verifyPasswordResetCode$3;->onNavigationEvent:Lo/confirmPasswordReset;

    invoke-virtual {v0, p1, p2}, Lo/confirmPasswordReset;->extraCallback(Landroid/graphics/Typeface;Z)V

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 1

    .line 232
    iget-object v0, p0, Lo/verifyPasswordResetCode$3;->onNavigationEvent:Lo/confirmPasswordReset;

    invoke-virtual {v0, p1}, Lo/confirmPasswordReset;->onPostMessage(I)V

    return-void
.end method
