.class public final Lo/forceSuggestionQuery$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/forceSuggestionQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final synthetic onPostMessage:Lo/onDisconnectSetValue;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onDisconnectSetValue;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/forceSuggestionQuery$onMessageChannelReady;->onPostMessage:Lo/onDisconnectSetValue;

    return-void
.end method


# virtual methods
.method public final synthetic onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/forceSuggestionQuery$onMessageChannelReady;->onPostMessage:Lo/onDisconnectSetValue;

    invoke-interface {v0, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "invoke(...)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
