.class public final enum Lo/setAdSize$asBinder$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/isPlayStorePossiblyUpdating;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setAdSize$asBinder$onMessageChannelReady;",
        ">;",
        "Lo/isPlayStorePossiblyUpdating;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/isRestrictedUserProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isRestrictedUserProfile<",
            "Lo/setAdSize$asBinder$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/setAdSize$asBinder$onMessageChannelReady;

.field private static final enum onMessageChannelReady:Lo/setAdSize$asBinder$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/setAdSize$asBinder$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/setAdSize$asBinder$onMessageChannelReady;


# instance fields
.field private final extraCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    new-instance v0, Lo/setAdSize$asBinder$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "CLASSIFICATION_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/setAdSize$asBinder$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAdSize$asBinder$onMessageChannelReady;->onMessageChannelReady:Lo/setAdSize$asBinder$onMessageChannelReady;

    .line 23
    new-instance v0, Lo/setAdSize$asBinder$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "CLASSIFICATION_NONE"

    invoke-direct {v0, v3, v2, v2}, Lo/setAdSize$asBinder$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAdSize$asBinder$onMessageChannelReady;->onNavigationEvent:Lo/setAdSize$asBinder$onMessageChannelReady;

    .line 24
    new-instance v0, Lo/setAdSize$asBinder$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "CLASSIFICATION_ALL"

    invoke-direct {v0, v4, v3, v3}, Lo/setAdSize$asBinder$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAdSize$asBinder$onMessageChannelReady;->onPostMessage:Lo/setAdSize$asBinder$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setAdSize$asBinder$onMessageChannelReady;

    .line 25
    sget-object v5, Lo/setAdSize$asBinder$onMessageChannelReady;->onMessageChannelReady:Lo/setAdSize$asBinder$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/setAdSize$asBinder$onMessageChannelReady;->onNavigationEvent:Lo/setAdSize$asBinder$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    .line 26
    sput-object v4, Lo/setAdSize$asBinder$onMessageChannelReady;->ICustomTabsCallback$Stub:[Lo/setAdSize$asBinder$onMessageChannelReady;

    .line 27
    new-instance v0, Lo/setAppEventListener;

    invoke-direct {v0}, Lo/setAppEventListener;-><init>()V

    sput-object v0, Lo/setAdSize$asBinder$onMessageChannelReady;->ICustomTabsCallback:Lo/isRestrictedUserProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lo/setAdSize$asBinder$onMessageChannelReady;->extraCallback:I

    return-void
.end method

.method public static onNavigationEvent()Lo/buildClient;
    .locals 1

    .line 8
    sget-object v0, Lo/setAdChoicesView;->onMessageChannelReady:Lo/buildClient;

    return-object v0
.end method

.method public static onPostMessage(I)Lo/setAdSize$asBinder$onMessageChannelReady;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lo/setAdSize$asBinder$onMessageChannelReady;->onPostMessage:Lo/setAdSize$asBinder$onMessageChannelReady;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lo/setAdSize$asBinder$onMessageChannelReady;->onNavigationEvent:Lo/setAdSize$asBinder$onMessageChannelReady;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lo/setAdSize$asBinder$onMessageChannelReady;->onMessageChannelReady:Lo/setAdSize$asBinder$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/setAdSize$asBinder$onMessageChannelReady;
    .locals 1

    .line 1
    sget-object v0, Lo/setAdSize$asBinder$onMessageChannelReady;->ICustomTabsCallback$Stub:[Lo/setAdSize$asBinder$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/setAdSize$asBinder$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setAdSize$asBinder$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 2
    iget v0, p0, Lo/setAdSize$asBinder$onMessageChannelReady;->extraCallback:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p0, Lo/setAdSize$asBinder$onMessageChannelReady;->extraCallback:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lo/setAdSize$asBinder$onMessageChannelReady;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
