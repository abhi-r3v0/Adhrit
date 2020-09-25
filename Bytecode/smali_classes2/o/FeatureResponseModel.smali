.class final Lo/FeatureResponseModel;
.super Ljava/lang/Object;


# instance fields
.field public ICustomTabsCallback:I

.field public extraCallback:I

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo/FeatureResponseModel;->onMessageChannelReady:I

    iput v0, p0, Lo/FeatureResponseModel;->extraCallback:I

    iput v0, p0, Lo/FeatureResponseModel;->ICustomTabsCallback:I

    iput v0, p0, Lo/FeatureResponseModel;->onPostMessage:I

    const/16 v0, 0x20

    iput v0, p0, Lo/FeatureResponseModel;->onNavigationEvent:I

    return-void
.end method
