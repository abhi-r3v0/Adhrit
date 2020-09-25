.class final Lo/onSecurityDebugPacket$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSslCacheDirectory$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onSecurityDebugPacket;->ICustomTabsCallback(Lo/reverseIterator;Lo/deleteTrackedQuery;Lo/pruneCache;)Lo/resetPreviouslyActiveTrackedQueries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getSslCacheDirectory;


# direct methods
.method constructor <init>(Lo/getSslCacheDirectory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lo/onSecurityDebugPacket$extraCallback;->onPostMessage:Lo/getSslCacheDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/getSslCacheDirectory;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/onSecurityDebugPacket$extraCallback;->onPostMessage:Lo/getSslCacheDirectory;

    return-object v0
.end method
