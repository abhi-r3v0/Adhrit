.class public final Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIteratorFrom$asInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

.field public onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Lo/reverseIteratorFrom$onPostMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 796
    sget-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    iput-object v0, p0, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    return-void
.end method
