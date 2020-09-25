.class public final enum Lo/getWorkingFileForSession$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getWorkingFileForSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getWorkingFileForSession$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/getWorkingFileForSession$onNavigationEvent;

.field public static final enum Boolean:Lo/getWorkingFileForSession$onNavigationEvent;

.field public static final enum DeferredValue:Lo/getWorkingFileForSession$onNavigationEvent;

.field public static final enum Number:Lo/getWorkingFileForSession$onNavigationEvent;

.field public static final enum String:Lo/getWorkingFileForSession$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lo/getWorkingFileForSession$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "DeferredValue"

    invoke-direct {v0, v2, v1}, Lo/getWorkingFileForSession$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getWorkingFileForSession$onNavigationEvent;->DeferredValue:Lo/getWorkingFileForSession$onNavigationEvent;

    .line 31
    new-instance v0, Lo/getWorkingFileForSession$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "Boolean"

    invoke-direct {v0, v3, v2}, Lo/getWorkingFileForSession$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getWorkingFileForSession$onNavigationEvent;->Boolean:Lo/getWorkingFileForSession$onNavigationEvent;

    .line 32
    new-instance v0, Lo/getWorkingFileForSession$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "Number"

    invoke-direct {v0, v4, v3}, Lo/getWorkingFileForSession$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getWorkingFileForSession$onNavigationEvent;->Number:Lo/getWorkingFileForSession$onNavigationEvent;

    .line 33
    new-instance v0, Lo/getWorkingFileForSession$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "String"

    invoke-direct {v0, v5, v4}, Lo/getWorkingFileForSession$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getWorkingFileForSession$onNavigationEvent;->String:Lo/getWorkingFileForSession$onNavigationEvent;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/getWorkingFileForSession$onNavigationEvent;

    .line 28
    sget-object v6, Lo/getWorkingFileForSession$onNavigationEvent;->DeferredValue:Lo/getWorkingFileForSession$onNavigationEvent;

    aput-object v6, v5, v1

    sget-object v1, Lo/getWorkingFileForSession$onNavigationEvent;->Boolean:Lo/getWorkingFileForSession$onNavigationEvent;

    aput-object v1, v5, v2

    sget-object v1, Lo/getWorkingFileForSession$onNavigationEvent;->Number:Lo/getWorkingFileForSession$onNavigationEvent;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/getWorkingFileForSession$onNavigationEvent;->$VALUES:[Lo/getWorkingFileForSession$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getWorkingFileForSession$onNavigationEvent;
    .locals 1

    .line 28
    const-class v0, Lo/getWorkingFileForSession$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getWorkingFileForSession$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/getWorkingFileForSession$onNavigationEvent;
    .locals 1

    .line 28
    sget-object v0, Lo/getWorkingFileForSession$onNavigationEvent;->$VALUES:[Lo/getWorkingFileForSession$onNavigationEvent;

    invoke-virtual {v0}, [Lo/getWorkingFileForSession$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getWorkingFileForSession$onNavigationEvent;

    return-object v0
.end method
