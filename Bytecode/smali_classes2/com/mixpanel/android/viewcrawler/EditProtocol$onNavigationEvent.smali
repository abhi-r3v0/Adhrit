.class public final Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/EditProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/FirebaseCrashlyticsNdk;


# direct methods
.method private constructor <init>(Lo/FirebaseCrashlyticsNdk;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FirebaseCrashlyticsNdk;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;->onNavigationEvent:Lo/FirebaseCrashlyticsNdk;

    .line 62
    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;->extraCallback:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lo/FirebaseCrashlyticsNdk;Ljava/util/List;B)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;-><init>(Lo/FirebaseCrashlyticsNdk;Ljava/util/List;)V

    return-void
.end method
