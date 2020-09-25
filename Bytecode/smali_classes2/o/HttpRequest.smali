.class final Lo/HttpRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HttpRequest$extraCallback;,
        Lo/HttpRequest$onNavigationEvent;,
        Lo/HttpRequest$onPostMessage;
    }
.end annotation


# instance fields
.field private final eventType:Ljava/lang/String;

.field private final intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lo/HttpRequest;->eventType:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    check-cast p2, Landroid/content/Intent;

    iput-object p2, p0, Lo/HttpRequest;->intent:Landroid/content/Intent;

    return-void

    .line 1011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "intent must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1008
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "evenType must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final getEventType()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/HttpRequest;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method final getIntent()Landroid/content/Intent;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/HttpRequest;->intent:Landroid/content/Intent;

    return-object v0
.end method
