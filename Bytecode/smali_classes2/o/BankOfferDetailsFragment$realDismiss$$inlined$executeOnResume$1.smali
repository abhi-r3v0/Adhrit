.class public abstract Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;
.super Landroid/view/TextureView;

# interfaces
.implements Lo/getShouldShowDescription;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field protected final onNavigationEvent:Lo/RewardData;

.field protected final onPostMessage:Lo/CardLinkingReason$$Parcelable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lo/RewardData;

    invoke-direct {v0}, Lo/RewardData;-><init>()V

    iput-object v0, p0, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent:Lo/RewardData;

    new-instance v0, Lo/CardLinkingReason$$Parcelable;

    invoke-direct {v0, p1, p0}, Lo/CardLinkingReason$$Parcelable;-><init>(Landroid/content/Context;Lo/getShouldShowDescription;)V

    iput-object v0, p0, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Lo/CardLinkingReason$$Parcelable;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public abstract ICustomTabsCallback$Stub()I
.end method

.method public abstract asBinder()V
.end method

.method public abstract asInterface()I
.end method

.method public abstract extraCallback()I
.end method

.method public abstract extraCallback(FF)V
.end method

.method public abstract onMessageChannelReady()V
.end method

.method public abstract onMessageChannelReady(I)V
.end method

.method public abstract onNavigationEvent()V
.end method

.method public abstract onPostMessage()Ljava/lang/String;
.end method

.method public abstract onPostMessage(Lo/BankOfferDetailsResponse;)V
.end method

.method public abstract onTransact()I
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method
