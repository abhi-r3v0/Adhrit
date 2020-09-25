.class public final enum Lo/setAdSize$asBinder$onPostMessage;
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
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setAdSize$asBinder$onPostMessage;",
        ">;",
        "Lo/isPlayStorePossiblyUpdating;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setAdSize$asBinder$onPostMessage;

.field public static final enum extraCallback:Lo/setAdSize$asBinder$onPostMessage;

.field private static final onMessageChannelReady:Lo/isRestrictedUserProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isRestrictedUserProfile<",
            "Lo/setAdSize$asBinder$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum onNavigationEvent:Lo/setAdSize$asBinder$onPostMessage;

.field public static final enum onPostMessage:Lo/setAdSize$asBinder$onPostMessage;

.field private static final synthetic onRelationshipValidationResult:[Lo/setAdSize$asBinder$onPostMessage;


# instance fields
.field private final onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lo/setAdSize$asBinder$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "MODE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/setAdSize$asBinder$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAdSize$asBinder$onPostMessage;->ICustomTabsCallback:Lo/setAdSize$asBinder$onPostMessage;

    .line 24
    new-instance v0, Lo/setAdSize$asBinder$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "MODE_ACCURATE"

    invoke-direct {v0, v3, v2, v2}, Lo/setAdSize$asBinder$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAdSize$asBinder$onPostMessage;->onNavigationEvent:Lo/setAdSize$asBinder$onPostMessage;

    .line 25
    new-instance v0, Lo/setAdSize$asBinder$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "MODE_FAST"

    invoke-direct {v0, v4, v3, v3}, Lo/setAdSize$asBinder$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAdSize$asBinder$onPostMessage;->onPostMessage:Lo/setAdSize$asBinder$onPostMessage;

    .line 26
    new-instance v0, Lo/setAdSize$asBinder$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "MODE_SELFIE"

    invoke-direct {v0, v5, v4, v4}, Lo/setAdSize$asBinder$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAdSize$asBinder$onPostMessage;->extraCallback:Lo/setAdSize$asBinder$onPostMessage;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/setAdSize$asBinder$onPostMessage;

    .line 27
    sget-object v6, Lo/setAdSize$asBinder$onPostMessage;->ICustomTabsCallback:Lo/setAdSize$asBinder$onPostMessage;

    aput-object v6, v5, v1

    sget-object v1, Lo/setAdSize$asBinder$onPostMessage;->onNavigationEvent:Lo/setAdSize$asBinder$onPostMessage;

    aput-object v1, v5, v2

    sget-object v1, Lo/setAdSize$asBinder$onPostMessage;->onPostMessage:Lo/setAdSize$asBinder$onPostMessage;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    .line 28
    sput-object v5, Lo/setAdSize$asBinder$onPostMessage;->onRelationshipValidationResult:[Lo/setAdSize$asBinder$onPostMessage;

    .line 29
    new-instance v0, Lo/setBodyView;

    invoke-direct {v0}, Lo/setBodyView;-><init>()V

    sput-object v0, Lo/setAdSize$asBinder$onPostMessage;->onMessageChannelReady:Lo/isRestrictedUserProfile;

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
    iput p3, p0, Lo/setAdSize$asBinder$onPostMessage;->onTransact:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/buildClient;
    .locals 1

    .line 9
    sget-object v0, Lo/setCallToActionView;->extraCallback:Lo/buildClient;

    return-object v0
.end method

.method public static ICustomTabsCallback(I)Lo/setAdSize$asBinder$onPostMessage;
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
    sget-object p0, Lo/setAdSize$asBinder$onPostMessage;->extraCallback:Lo/setAdSize$asBinder$onPostMessage;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lo/setAdSize$asBinder$onPostMessage;->onPostMessage:Lo/setAdSize$asBinder$onPostMessage;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lo/setAdSize$asBinder$onPostMessage;->onNavigationEvent:Lo/setAdSize$asBinder$onPostMessage;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lo/setAdSize$asBinder$onPostMessage;->ICustomTabsCallback:Lo/setAdSize$asBinder$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/setAdSize$asBinder$onPostMessage;
    .locals 1

    .line 1
    sget-object v0, Lo/setAdSize$asBinder$onPostMessage;->onRelationshipValidationResult:[Lo/setAdSize$asBinder$onPostMessage;

    invoke-virtual {v0}, [Lo/setAdSize$asBinder$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setAdSize$asBinder$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 2
    iget v0, p0, Lo/setAdSize$asBinder$onPostMessage;->onTransact:I

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
    iget v1, p0, Lo/setAdSize$asBinder$onPostMessage;->onTransact:I

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lo/setAdSize$asBinder$onPostMessage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
