.class public final Lo/reverseIterator$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Z

.field public extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

.field public onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator$onMessageChannelReady<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public onPostMessage:Lo/reverseIterator$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator$onMessageChannelReady<",
            "TReqT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 460
    invoke-direct {p0}, Lo/reverseIterator$extraCallback;-><init>()V

    return-void
.end method
