.class public final Lo/getMinKey$onPostMessage$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinKey$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

.field public onMessageChannelReady:[[Ljava/lang/Object;

.field public onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    sget-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    iput-object v0, p0, Lo/getMinKey$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 769
    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lo/getMinKey$onPostMessage$extraCallback;->onMessageChannelReady:[[Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method
