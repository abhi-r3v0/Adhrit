.class public final enum Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$OperatingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

.field public static final enum Added:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

.field public static final enum Current:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

.field public static final enum NoChange:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

.field public static final enum Removed:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

.field public static final enum Reset:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 172
    new-instance v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "NoChange"

    invoke-direct {v0, v2, v1}, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->NoChange:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    .line 173
    new-instance v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "Added"

    invoke-direct {v0, v3, v2}, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Added:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    .line 174
    new-instance v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "Removed"

    invoke-direct {v0, v4, v3}, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Removed:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    .line 175
    new-instance v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "Current"

    invoke-direct {v0, v5, v4}, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Current:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    .line 176
    new-instance v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    const/4 v5, 0x4

    const-string v6, "Reset"

    invoke-direct {v0, v6, v5}, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Reset:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    .line 171
    sget-object v7, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->NoChange:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    aput-object v7, v6, v1

    sget-object v1, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Added:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    aput-object v1, v6, v2

    sget-object v1, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Removed:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    aput-object v1, v6, v3

    sget-object v1, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Current:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->$VALUES:[Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;
    .locals 1

    .line 171
    const-class v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;
    .locals 1

    .line 171
    sget-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->$VALUES:[Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    invoke-virtual {v0}, [Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    return-object v0
.end method
