.class public final Lo/populateFramesList$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/populateFramesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;
    }
.end annotation


# static fields
.field static final ARRAY_TO_RB_TREE_SIZE_THRESHOLD:I = 0x19

.field private static final IDENTITY_TRANSLATOR:Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;


# instance fields
.field private final arg$1:Lo/removeBackgroundStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    invoke-static {}, Lo/populateBinaryImageData;->lambdaFactory$()Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/populateFramesList$onNavigationEvent;->IDENTITY_TRANSLATOR:Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/populateFramesList$onNavigationEvent;->arg$1:Lo/removeBackgroundStateChangeListener;

    return-void
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;Ljava/util/Comparator;)Lo/populateFramesList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lo/populateFramesList$onNavigationEvent$onMessageChannelReady<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lo/populateFramesList<",
            "TA;TC;>;"
        }
    .end annotation

    .line 147
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 148
    invoke-static {p0, p1, p2, p3}, Lo/populateExceptionData;->buildFrom(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;Ljava/util/Comparator;)Lo/populateExceptionData;

    move-result-object p0

    return-object p0

    .line 150
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->buildFrom(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;Ljava/util/Comparator;)Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;

    move-result-object p0

    return-object p0
.end method

.method public static emptyMap(Ljava/util/Comparator;)Lo/populateFramesList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lo/populateFramesList<",
            "TK;TV;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lo/populateExceptionData;

    invoke-direct {v0, p0}, Lo/populateExceptionData;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lo/populateFramesList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lo/populateFramesList<",
            "TA;TB;>;"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 136
    invoke-static {p0, p1}, Lo/populateExceptionData;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lo/populateExceptionData;

    move-result-object p0

    return-object p0

    .line 138
    :cond_0
    invoke-static {p0, p1}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;

    move-result-object p0

    return-object p0
.end method

.method public static identityTranslator()Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/populateFramesList$onNavigationEvent$onMessageChannelReady<",
            "TA;TA;>;"
        }
    .end annotation

    .line 130
    sget-object v0, Lo/populateFramesList$onNavigationEvent;->IDENTITY_TRANSLATOR:Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/populateFramesList$onNavigationEvent;->arg$1:Lo/removeBackgroundStateChangeListener;

    invoke-static {v0}, Lo/parseEventFrame;->lambda$registerRpcInternal$3$Rpc(Lo/removeBackgroundStateChangeListener;)V

    return-void
.end method
