.class abstract Lo/isBrowsable$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isBrowsable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onMessageChannelReady"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1066
    invoke-direct {p0}, Lo/isBrowsable$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback(Lo/isBrowsable;Lo/isBrowsable$onNavigationEvent;Lo/isBrowsable$onNavigationEvent;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isBrowsable<",
            "*>;",
            "Lo/isBrowsable$onNavigationEvent;",
            "Lo/isBrowsable$onNavigationEvent;",
            ")Z"
        }
    .end annotation
.end method

.method abstract extraCallback(Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)V
.end method

.method abstract extraCallback(Lo/isBrowsable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isBrowsable<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method abstract extraCallback(Lo/isBrowsable;Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isBrowsable<",
            "*>;",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            ")Z"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Lo/isBrowsable$ICustomTabsCallback$Stub;Ljava/lang/Thread;)V
.end method
