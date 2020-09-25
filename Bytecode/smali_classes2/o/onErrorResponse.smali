.class public abstract Lo/onErrorResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onErrorResponse$extraCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()J
.end method

.method public abstract asInterface()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/handleResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract extraCallback()Lo/setBrandDomain;
.end method

.method public abstract onMessageChannelReady()Ljava/lang/String;
.end method

.method public abstract onNavigationEvent()Ljava/lang/Integer;
.end method

.method public abstract onPostMessage()J
.end method

.method public abstract onRelationshipValidationResult()Lo/FirebaseMessagingServiceListener;
.end method
