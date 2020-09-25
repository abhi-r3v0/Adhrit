.class public final enum Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Event$Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

.field public static final enum Backoff:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

.field public static final enum Error:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

.field public static final enum Initial:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

.field public static final enum Open:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

.field public static final enum Starting:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 103
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "Initial"

    invoke-direct {v0, v2, v1}, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Initial:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    .line 113
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "Starting"

    invoke-direct {v0, v3, v2}, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Starting:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    .line 119
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "Open"

    invoke-direct {v0, v4, v3}, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Open:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    .line 125
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "Error"

    invoke-direct {v0, v5, v4}, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Error:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    .line 132
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "Backoff"

    invoke-direct {v0, v6, v5}, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Backoff:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    .line 97
    sget-object v7, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Initial:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    aput-object v7, v6, v1

    sget-object v1, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Starting:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    aput-object v1, v6, v2

    sget-object v1, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Open:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    aput-object v1, v6, v3

    sget-object v1, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Error:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->$VALUES:[Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;
    .locals 1

    .line 97
    const-class v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;
    .locals 1

    .line 97
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->$VALUES:[Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    return-object v0
.end method
