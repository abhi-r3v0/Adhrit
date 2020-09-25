.class final Lo/SubmitScoreRequestJsonAdapter$onPostMessage;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SubmitScoreRequestJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/SubmitScoreRequestJsonAdapter;


# direct methods
.method private constructor <init>(Lo/SubmitScoreRequestJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/SubmitScoreRequestJsonAdapter$onPostMessage;->extraCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/SubmitScoreRequestJsonAdapter;Lo/UserGameDetailsJsonAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/SubmitScoreRequestJsonAdapter$onPostMessage;-><init>(Lo/SubmitScoreRequestJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/SubmitScoreRequestJsonAdapter$onPostMessage;->extraCallback:Lo/SubmitScoreRequestJsonAdapter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage(Lo/SubmitScoreRequestJsonAdapter;Z)Z

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/SubmitScoreRequestJsonAdapter$onPostMessage;->extraCallback:Lo/SubmitScoreRequestJsonAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage(Lo/SubmitScoreRequestJsonAdapter;Z)Z

    :cond_1
    return-void
.end method
