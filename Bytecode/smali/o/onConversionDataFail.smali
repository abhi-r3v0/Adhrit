.class public final Lo/onConversionDataFail;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage()V
    .locals 1

    const-string v0, "imagepipeline"

    .line 40
    invoke-static {v0}, Lo/AppsFlyerLibCore$3;->onMessageChannelReady(Ljava/lang/String;)Z

    return-void
.end method
