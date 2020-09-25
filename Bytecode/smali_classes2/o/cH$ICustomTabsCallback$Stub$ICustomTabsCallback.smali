.class public final enum Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/eV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH$ICustomTabsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;",
        ">;",
        "Lo/eV;"
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/fc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fc<",
            "Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic onMessageChannelReady:[Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

.field private static final enum onNavigationEvent:Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

.field private static final enum onPostMessage:Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;


# instance fields
.field private final ICustomTabsCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RADS"

    invoke-direct {v0, v3, v1, v2}, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

    .line 22
    new-instance v0, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "PROVISIONING"

    invoke-direct {v0, v4, v2, v3}, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->onNavigationEvent:Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

    new-array v3, v3, [Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

    .line 23
    sget-object v4, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->onMessageChannelReady:[Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

    .line 24
    new-instance v0, Lo/gr;

    invoke-direct {v0}, Lo/gr;-><init>()V

    sput-object v0, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->extraCallback:Lo/fc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->ICustomTabsCallback:I

    return-void
.end method

.method public static onNavigationEvent(I)Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->onNavigationEvent:Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

    return-object p0
.end method

.method public static onNavigationEvent()Lo/fI;
    .locals 1

    .line 7
    sget-object v0, Lo/cJ;->onPostMessage:Lo/fI;

    return-object v0
.end method

.method public static values()[Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;
    .locals 1

    .line 1
    sget-object v0, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->onMessageChannelReady:[Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 2
    iget v0, p0, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->ICustomTabsCallback:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
