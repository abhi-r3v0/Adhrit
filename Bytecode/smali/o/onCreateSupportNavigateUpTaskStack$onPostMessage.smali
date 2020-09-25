.class abstract Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onCreateSupportNavigateUpTaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onPostMessage"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1064
    invoke-direct {p0}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback(Lo/onCreateSupportNavigateUpTaskStack$asBinder;Ljava/lang/Thread;)V
.end method

.method abstract ICustomTabsCallback(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "*>;",
            "Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;",
            "Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;",
            ")Z"
        }
    .end annotation
.end method

.method abstract extraCallback(Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)V
.end method

.method abstract onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "*>;",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            ")Z"
        }
    .end annotation
.end method
