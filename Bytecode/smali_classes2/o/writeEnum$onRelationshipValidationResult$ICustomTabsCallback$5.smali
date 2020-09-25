.class final Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getEventLogSize$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getEventLogSize$onNavigationEvent<",
        "Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(I)Lo/getEventLogSize$ICustomTabsCallback;
    .locals 0

    .line 4304
    invoke-static {p1}, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onMessageChannelReady(I)Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method
