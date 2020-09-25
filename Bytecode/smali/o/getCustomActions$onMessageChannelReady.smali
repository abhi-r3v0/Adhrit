.class abstract Lo/getCustomActions$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCustomActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getCustomActions;


# direct methods
.method private constructor <init>(Lo/getCustomActions;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Lo/getCustomActions$onMessageChannelReady;->ICustomTabsCallback:Lo/getCustomActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCustomActions;B)V
    .locals 0

    .line 1220
    invoke-direct {p0, p1}, Lo/getCustomActions$onMessageChannelReady;-><init>(Lo/getCustomActions;)V

    return-void
.end method


# virtual methods
.method ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method ICustomTabsCallback(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    return-void
.end method

.method ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method ICustomTabsCallback(I)Z
    .locals 1

    .line 1262
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method asBinder()V
    .locals 0

    return-void
.end method

.method asInterface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method extraCallback(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method extraCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method onMessageChannelReady(I)Z
    .locals 1

    .line 1273
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method onNavigationEvent()V
    .locals 0

    return-void
.end method

.method onNavigationEvent(Lo/getPlaybackState;)V
    .locals 0

    return-void
.end method

.method onNavigationEvent(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method onPostMessage()Ljava/lang/String;
    .locals 2

    .line 1230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onPostMessage(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method onPostMessage(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method onPostMessage(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method onRelationshipValidationResult()Ljava/lang/CharSequence;
    .locals 2

    .line 1284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onTransact()V
    .locals 0

    return-void
.end method
