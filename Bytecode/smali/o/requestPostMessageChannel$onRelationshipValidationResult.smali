.class abstract Lo/requestPostMessageChannel$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestPostMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onRelationshipValidationResult"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/requestPostMessageChannel$3;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Lo/requestPostMessageChannel$onRelationshipValidationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public extraCallback()V
    .locals 0

    return-void
.end method

.method public abstract onMessageChannelReady()V
.end method

.method public onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
