.class final Lo/setItemInvoker$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setItemInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/setupAnimatorToVisibility;

.field final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setForceShowIcon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/setupAnimatorToVisibility;)V
    .locals 1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setItemInvoker$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 340
    iput-object p1, p0, Lo/setItemInvoker$ICustomTabsCallback;->ICustomTabsCallback:Lo/setupAnimatorToVisibility;

    return-void
.end method

.method synthetic constructor <init>(Lo/setupAnimatorToVisibility;B)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lo/setItemInvoker$ICustomTabsCallback;-><init>(Lo/setupAnimatorToVisibility;)V

    return-void
.end method
