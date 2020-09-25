.class public final Lo/releaseOptions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/resetOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onMessageChannelReady([Lo/CardBinResponseJsonAdapter;)Lo/CardBinResponseJsonAdapter;
    .locals 1

    .line 26
    new-instance v0, Lo/isRotationRequired;

    invoke-direct {v0, p1}, Lo/isRotationRequired;-><init>([Lo/CardBinResponseJsonAdapter;)V

    return-object v0
.end method
