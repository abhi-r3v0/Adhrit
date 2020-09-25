.class public final Lo/setCustomAmount;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setCustomAmount$asInterface;,
        Lo/setCustomAmount$ICustomTabsCallback$Stub;,
        Lo/setCustomAmount$onMessageChannelReady;,
        Lo/setCustomAmount$onRelationshipValidationResult;,
        Lo/setCustomAmount$ICustomTabsCallback;,
        Lo/setCustomAmount$onPostMessage;,
        Lo/setCustomAmount$onNavigationEvent;,
        Lo/setCustomAmount$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lo/setCustomAmount$onPostMessage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "*>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "*TO;>;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lo/setCustomAmount$ICustomTabsCallback$Stub;",
            ">(",
            "Ljava/lang/String;",
            "Lo/setCustomAmount$onNavigationEvent<",
            "TC;TO;>;",
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 4
    iput-object p1, p0, Lo/setCustomAmount;->onMessageChannelReady:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lo/setCustomAmount;->extraCallback:Lo/setCustomAmount$onNavigationEvent;

    .line 7
    iput-object p3, p0, Lo/setCustomAmount;->ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;

    return-void

    .line 2011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Cannot construct an Api with a null ClientKey"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1011
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Cannot construct an Api with a null ClientBuilder"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onNavigationEvent()Lo/setCustomAmount$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setCustomAmount$onNavigationEvent<",
            "*TO;>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lo/setCustomAmount;->extraCallback:Lo/setCustomAmount$onNavigationEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lo/setCustomAmount;->extraCallback:Lo/setCustomAmount$onNavigationEvent;

    return-object v0

    .line 2029
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage()Lo/setCustomAmount$ICustomTabsCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setCustomAmount$ICustomTabsCallback<",
            "*>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/setCustomAmount;->ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;

    if-eqz v0, :cond_0

    return-object v0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API was constructed with null client keys. This should not be possible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
