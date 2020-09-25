.class final Lo/AsyncListUtil$DataCallback$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncListUtil$DataCallback;->setup(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/onDisconnectSetValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00080\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "v",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "<anonymous parameter 2>",
        "Landroid/view/KeyEvent;",
        "onEditorAction"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/AsyncListUtil$DataCallback;


# direct methods
.method constructor <init>(Lo/AsyncListUtil$DataCallback;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncListUtil$DataCallback$asInterface;->onMessageChannelReady:Lo/AsyncListUtil$DataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 133
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lo/AsyncListUtil$DataCallback$asInterface;->onMessageChannelReady:Lo/AsyncListUtil$DataCallback;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p1, p3}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string p3, "payAmount"

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "$this$toPlainNumbers"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, ","

    const-string v0, ""

    .line 2075
    invoke-static {p1, p3, v0, p2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 134
    iget-object p1, p0, Lo/AsyncListUtil$DataCallback$asInterface;->onMessageChannelReady:Lo/AsyncListUtil$DataCallback;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p1, p3}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    return p2
.end method
