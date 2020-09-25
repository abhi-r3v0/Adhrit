.class public Lcom/axis/axismerchantsdk/analytics/ScreenView;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onPostMessage:I


# instance fields
.field public ICustomTabsCallback:Ljava/util/Date;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/axis/axismerchantsdk/analytics/ScreenView;->ICustomTabsCallback:Ljava/util/Date;

    return-void
.end method

.method public static ICustomTabsCallback()I
    .locals 1

    .line 31
    sget v0, Lcom/axis/axismerchantsdk/analytics/ScreenView;->onPostMessage:I

    return v0
.end method

.method public static onPostMessage()V
    .locals 1

    .line 70
    sget v0, Lcom/axis/axismerchantsdk/analytics/ScreenView;->onPostMessage:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/axis/axismerchantsdk/analytics/ScreenView;->onPostMessage:I

    return-void
.end method
