.class public final enum Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/isPlayStorePossiblyUpdating;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize$onRelationshipValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;",
        ">;",
        "Lo/isPlayStorePossiblyUpdating;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/isRestrictedUserProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isRestrictedUserProfile<",
            "Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

.field private static final enum extraCallback:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

.field private static final enum onMessageChannelReady:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

.field private static final enum onNavigationEvent:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

.field private static final enum onPostMessage:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;


# instance fields
.field private final asInterface:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "RESULT_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->extraCallback:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    .line 24
    new-instance v0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "RESULT_SUCCESS"

    invoke-direct {v0, v3, v2, v2}, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->onMessageChannelReady:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    .line 25
    new-instance v0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "RESULT_FAIL"

    invoke-direct {v0, v4, v3, v3}, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->onPostMessage:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    .line 26
    new-instance v0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "RESULT_SKIPPED"

    invoke-direct {v0, v5, v4, v4}, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->onNavigationEvent:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    .line 27
    sget-object v6, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->extraCallback:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    aput-object v6, v5, v1

    sget-object v1, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->onMessageChannelReady:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    aput-object v1, v5, v2

    sget-object v1, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->onPostMessage:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    .line 28
    sput-object v5, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback$Stub:[Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    .line 29
    new-instance v0, Lo/setAdListener;

    invoke-direct {v0}, Lo/setAdListener;-><init>()V

    sput-object v0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback:Lo/isRestrictedUserProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->asInterface:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/buildClient;
    .locals 1

    .line 9
    sget-object v0, Lo/setCorrelator;->onNavigationEvent:Lo/buildClient;

    return-object v0
.end method

.method public static onNavigationEvent(I)Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    sget-object p0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->onNavigationEvent:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->onPostMessage:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->onMessageChannelReady:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->extraCallback:Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;
    .locals 1

    .line 1
    sget-object v0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback$Stub:[Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 2
    iget v0, p0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->asInterface:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget v1, p0, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->asInterface:I

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
