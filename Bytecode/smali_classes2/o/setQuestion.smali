.class public abstract Lo/setQuestion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uploadState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lo/access$502;",
        ">",
        "Ljava/lang/Object;",
        "Lo/uploadState<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/setCountry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lo/setCountry;->onMessageChannelReady()Lo/setCountry;

    move-result-object v0

    sput-object v0, Lo/setQuestion;->extraCallback:Lo/setCountry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
