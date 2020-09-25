.class public final Lo/setTextTypeface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field private final arg$1:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setTextTypeface;->arg$1:[Ljava/lang/Object;

    return-void
.end method

.method public static lambdaFactory$([Ljava/lang/Object;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1

    .line 4000
    new-instance v0, Lo/setTextTypeface;

    invoke-direct {v0, p0}, Lo/setTextTypeface;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static onMessageChannelReady(Lo/onInstallConversionFailureNative;Lo/AppsFlyerLib;Lo/Ι;)Lo/setPosition;
    .locals 3

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 30
    new-instance p1, Lo/setTextColor;

    invoke-virtual {p0}, Lo/onInstallConversionFailureNative;->extraCallback()Lo/afDebugLog;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lo/setTextColor;-><init>(Lo/afDebugLog;Lo/Ι;)V

    return-object p1

    .line 31
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 32
    new-instance v0, Lo/setOnButtonClickListener;

    new-instance v1, Lo/removeAllLottieOnCompositionLoadedListener;

    .line 1201
    invoke-static {}, Lo/post;->ICustomTabsCallback()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1200
    invoke-virtual {p0, v2}, Lo/onInstallConversionFailureNative;->onMessageChannelReady(I)Lo/CustomVersionedParcelable;

    move-result-object p0

    .line 33
    invoke-direct {v1, p0}, Lo/removeAllLottieOnCompositionLoadedListener;-><init>(Lo/CustomVersionedParcelable;)V

    invoke-direct {v0, v1, p1, p2}, Lo/setOnButtonClickListener;-><init>(Lo/removeAllLottieOnCompositionLoadedListener;Lo/AppsFlyerLib;Lo/Ι;)V

    return-object v0

    .line 37
    :cond_1
    new-instance p0, Lo/setText;

    invoke-direct {p0}, Lo/setText;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/setTextTypeface;->arg$1:[Ljava/lang/Object;

    invoke-static {v0, p1, p2, p3, p4}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->lambda$binding$0([Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
