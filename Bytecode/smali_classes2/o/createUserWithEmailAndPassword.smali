.class public final Lo/createUserWithEmailAndPassword;
.super Lo/confirmPasswordReset;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/createUserWithEmailAndPassword$extraCallback;
    }
.end annotation


# instance fields
.field private final extraCallback:Landroid/graphics/Typeface;

.field public onMessageChannelReady:Z

.field private final onPostMessage:Lo/createUserWithEmailAndPassword$extraCallback;


# direct methods
.method public constructor <init>(Lo/createUserWithEmailAndPassword$extraCallback;Landroid/graphics/Typeface;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/confirmPasswordReset;-><init>()V

    .line 43
    iput-object p2, p0, Lo/createUserWithEmailAndPassword;->extraCallback:Landroid/graphics/Typeface;

    .line 44
    iput-object p1, p0, Lo/createUserWithEmailAndPassword;->onPostMessage:Lo/createUserWithEmailAndPassword$extraCallback;

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1068
    iget-boolean p2, p0, Lo/createUserWithEmailAndPassword;->onMessageChannelReady:Z

    if-nez p2, :cond_0

    .line 1069
    iget-object p2, p0, Lo/createUserWithEmailAndPassword;->onPostMessage:Lo/createUserWithEmailAndPassword$extraCallback;

    invoke-interface {p2, p1}, Lo/createUserWithEmailAndPassword$extraCallback;->onNavigationEvent(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(I)V
    .locals 1

    .line 54
    iget-object p1, p0, Lo/createUserWithEmailAndPassword;->extraCallback:Landroid/graphics/Typeface;

    .line 2068
    iget-boolean v0, p0, Lo/createUserWithEmailAndPassword;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 2069
    iget-object v0, p0, Lo/createUserWithEmailAndPassword;->onPostMessage:Lo/createUserWithEmailAndPassword$extraCallback;

    invoke-interface {v0, p1}, Lo/createUserWithEmailAndPassword$extraCallback;->onNavigationEvent(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
