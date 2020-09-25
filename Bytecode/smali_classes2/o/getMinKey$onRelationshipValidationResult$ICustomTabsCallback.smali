.class public final Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinKey$onRelationshipValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Ljava/lang/Object;

.field public onPostMessage:Lo/serverCacheEstimatedSizeInBytes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    sget-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    iput-object v0, p0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    return-void
.end method
