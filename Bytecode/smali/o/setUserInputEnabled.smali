.class public final Lo/setUserInputEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CoroutineWorker;


# static fields
.field private static final onNavigationEvent:Lo/setUserInputEnabled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/setUserInputEnabled;

    invoke-direct {v0}, Lo/setUserInputEnabled;-><init>()V

    sput-object v0, Lo/setUserInputEnabled;->onNavigationEvent:Lo/setUserInputEnabled;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent()Lo/setUserInputEnabled;
    .locals 1

    .line 18
    sget-object v0, Lo/setUserInputEnabled;->onNavigationEvent:Lo/setUserInputEnabled;

    return-object v0
.end method


# virtual methods
.method public final now()J
    .locals 2

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
