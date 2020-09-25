.class public final Lo/stopLoading$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CampaignDatabase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/stopLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
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
.field public onNavigationEvent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1015
    iput v0, p0, Lo/stopLoading$onPostMessage;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    .line 1020
    iput p2, p0, Lo/stopLoading$onPostMessage;->onNavigationEvent:I

    return-void
.end method
