.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;,
        Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;,
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$onMessageChannelReady;,
        Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

.field private static ICustomTabsCallback$Stub:Ljava/lang/Boolean; = null

.field private static final ICustomTabsService:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static asBinder:I = -0x1

.field private static asInterface:Ljava/lang/String;

.field private static final getInterfaceDescriptor:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;

.field public static final onMessageChannelReady:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

.field public static final onNavigationEvent:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

.field public static final onPostMessage:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

.field private static onRelationshipValidationResult:Lo/setPointsColor;

.field private static onTransact:Lo/RatingTagsJsonAdapter;


# instance fields
.field public final extraCallback:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsService:Ljava/lang/ThreadLocal;

    .line 266
    new-instance v0, Lo/RatingTagJsonAdapter;

    invoke-direct {v0}, Lo/RatingTagJsonAdapter;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->getInterfaceDescriptor:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;

    .line 267
    new-instance v0, Lo/EventsMappingJsonAdapter;

    invoke-direct {v0}, Lo/EventsMappingJsonAdapter;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    .line 268
    new-instance v0, Lo/MetaDataJsonAdapter;

    invoke-direct {v0}, Lo/MetaDataJsonAdapter;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    .line 269
    new-instance v0, Lo/RatingTag;

    invoke-direct {v0}, Lo/RatingTag;-><init>()V

    .line 270
    new-instance v0, Lo/MetaData;

    invoke-direct {v0}, Lo/MetaData;-><init>()V

    .line 271
    new-instance v0, Lo/RatingDialogFragment$dismissInternal$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/RatingDialogFragment$dismissInternal$$inlined$executeOnResume$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->onPostMessage:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    .line 272
    new-instance v0, Lo/SetRatingBodyJsonAdapter;

    invoke-direct {v0}, Lo/SetRatingBodyJsonAdapter;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsCallback:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    .line 273
    new-instance v0, Lo/setCardNoListener;

    invoke-direct {v0}, Lo/setCardNoListener;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 262
    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback:Landroid/content/Context;

    return-void

    .line 10002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string p0, "api_force_staging"

    goto :goto_0

    :cond_0
    const-string p0, "api"

    .line 126
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2a

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr p2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "content://com.google.android.gms.chimera/"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 127
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_4

    .line 129
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 132
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 134
    const-class p2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x2

    .line 135
    :try_start_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->asInterface:Ljava/lang/String;

    const-string v2, "loaderVersion"

    .line 137
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 139
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sput v2, Lcom/google/android/gms/dynamite/DynamiteModule;->asBinder:I

    .line 140
    :cond_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :try_start_3
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsService:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;

    if-eqz p2, :cond_2

    .line 142
    iget-object v2, p2, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    if-nez v2, :cond_2

    .line 143
    iput-object p0, p2, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 140
    monitor-exit p2

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_3

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return p1

    :cond_4
    :try_start_4
    const-string p1, "DynamiteModule"

    const-string p2, "Failed to retrieve remote module version."

    .line 130
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to connect to dynamite module ContentResolver."

    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;B)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 149
    :goto_2
    :try_start_5
    instance-of p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    if-eqz p1, :cond_5

    .line 150
    throw p0

    .line 151
    :cond_5
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "V2 version check failed"

    invoke-direct {p1, p2, p0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    if-eqz v0, :cond_6

    .line 153
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_6
    throw p0
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Selected remote version of "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", version >= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamiteModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    .line 214
    :try_start_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->onRelationshipValidationResult:Lo/setPointsColor;

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 218
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsService:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;

    if-eqz v2, :cond_2

    .line 219
    iget-object v3, v2, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 222
    iget-object v2, v2, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    .line 5004
    new-instance v3, Lo/GetRatingResponseJsonAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DynamiteModule"

    const-string v4, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 226
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6004
    new-instance v3, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v3, p0}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 7004
    new-instance p0, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {p0, v2}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 230
    invoke-interface {v1, v3, p1, p2, p0}, Lo/setPointsColor;->onPostMessage(Lo/getEventName;Ljava/lang/String;ILo/getEventName;)Lo/getEventName;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v3, "DynamiteModule"

    const-string v4, "Dynamite loader version < 2, falling back to loadModule2"

    .line 231
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8004
    new-instance v3, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v3, p0}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 9004
    new-instance p0, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {p0, v2}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 235
    invoke-interface {v1, v3, p1, p2, p0}, Lo/setPointsColor;->onMessageChannelReady(Lo/getEventName;Ljava/lang/String;ILo/getEventName;)Lo/getEventName;

    move-result-object p0

    .line 236
    :goto_0
    invoke-static {p0}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_1

    .line 240
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 239
    :cond_1
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "Failed to get module context"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;B)V

    throw p0

    .line 220
    :cond_2
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "No result cursor"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;B)V

    throw p0

    .line 217
    :cond_3
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "DynamiteLoaderV2 was not cached."

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;B)V

    throw p0

    :catchall_0
    move-exception p0

    .line 215
    monitor-exit v0

    throw p0
.end method

.method public static extraCallback(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 5

    const-string v0, "DynamiteModule"

    .line 109
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;)Lo/RatingTagsJsonAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 112
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lo/RatingTagsJsonAdapter;->ICustomTabsCallback()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 1004
    new-instance v3, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v3, p0}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 115
    invoke-interface {v1, v3, p1, p2}, Lo/RatingTagsJsonAdapter;->extraCallback(Lo/getEventName;Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_1
    const-string v3, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 116
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    new-instance v3, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v3, p0}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 117
    invoke-interface {v1, v3, p1, p2}, Lo/RatingTagsJsonAdapter;->onPostMessage(Lo/getEventName;Ljava/lang/String;Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to retrieve remote module version: "

    .line 119
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static onMessageChannelReady(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const-string v0, ":"

    const-string v1, "DynamiteModule"

    .line 1
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsService:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;

    .line 2
    new-instance v3, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;-><init>(B)V

    .line 3
    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsService:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->getInterfaceDescriptor:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;

    .line 5
    invoke-interface {p1, p0, p2, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;)Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;

    move-result-object v5

    .line 6
    iget v6, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onNavigationEvent:I

    iget v7, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onMessageChannelReady:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x44

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Considering local module "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and remote module "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v0, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    if-eqz v0, :cond_9

    iget v0, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    iget v0, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz v0, :cond_9

    :cond_0
    iget v0, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    iget v0, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onMessageChannelReady:I

    if-eqz v0, :cond_9

    .line 9
    :cond_1
    iget v0, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    if-ne v0, v6, :cond_3

    .line 10
    invoke-static {p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, v3, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, v3, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_2
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsService:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0

    .line 15
    :cond_3
    :try_start_1
    iget v0, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v7, :cond_8

    .line 16
    :try_start_2
    iget v0, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onMessageChannelReady:I

    invoke-static {p0, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    iget-object p1, v3, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, v3, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 19
    :cond_4
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsService:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v7, "Failed to load remote module: "

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_5
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_0
    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget v1, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz v1, :cond_7

    .line 24
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$onMessageChannelReady;

    iget v5, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onNavigationEvent:I

    invoke-direct {v1, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$onMessageChannelReady;-><init>(I)V

    .line 25
    invoke-interface {p1, p0, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;)Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;

    move-result-object p1

    .line 26
    iget p1, p1, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    if-ne p1, v6, :cond_7

    .line 27
    invoke-static {p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    iget-object p1, v3, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    if-eqz p1, :cond_6

    .line 29
    iget-object p1, v3, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 30
    :cond_6
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsService:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0

    .line 32
    :cond_7
    :try_start_4
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "Remote load failed. No local fallback found."

    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw p0

    .line 33
    :cond_8
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    iget p1, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    const/16 p2, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "VersionPolicy returned invalid code:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;B)V

    throw p0

    .line 8
    :cond_9
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    iget p1, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onNavigationEvent:I

    iget p2, v5, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onMessageChannelReady:I

    const/16 v0, 0x5b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "No acceptable module found. Local version is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and remote version is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;B)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    .line 34
    iget-object p1, v3, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    if-eqz p1, :cond_a

    .line 35
    iget-object p1, v3, Lcom/google/android/gms/dynamite/DynamiteModule$onPostMessage;->ICustomTabsCallback:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_a
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsService:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 37
    throw p0
.end method

.method private static onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 2

    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Selected local version of "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "DynamiteModule"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private static onMessageChannelReady(Landroid/content/Context;)Lo/RatingTagsJsonAdapter;
    .locals 5

    .line 187
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    .line 188
    :try_start_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->onTransact:Lo/RatingTagsJsonAdapter;

    if-eqz v1, :cond_0

    .line 189
    sget-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->onTransact:Lo/RatingTagsJsonAdapter;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "com.google.android.gms"

    const/4 v3, 0x3

    .line 191
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 193
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    const-string v2, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 198
    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 199
    instance-of v3, v2, Lo/RatingTagsJsonAdapter;

    if-eqz v3, :cond_2

    .line 200
    check-cast v2, Lo/RatingTagsJsonAdapter;

    goto :goto_0

    .line 201
    :cond_2
    new-instance v2, Lo/SetRatingBody;

    invoke-direct {v2, p0}, Lo/SetRatingBody;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-eqz v2, :cond_4

    .line 204
    sput-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->onTransact:Lo/RatingTagsJsonAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :try_start_2
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p0

    const-string v2, "DynamiteModule"

    const-string v3, "Failed to load IDynamiteLoader from GmsCore: "

    .line 208
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const-string v0, "DynamiteModule"

    const/4 v1, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "com.google.android.gms.dynamite.descriptors."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ModuleDescriptor"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "MODULE_ID"

    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "MODULE_VERSION"

    .line 43
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Module descriptor id \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' didn\'t match expected id \'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 49
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to load module descriptor class: "

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 51
    :catch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Local module descriptor class for "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method public static onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 8

    .line 56
    :try_start_0
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 57
    :try_start_1
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_6

    .line 60
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 61
    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sClassLoader"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    .line 65
    :try_start_3
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    if-eqz v4, :cond_1

    .line 67
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v4, v1, :cond_0

    .line 68
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 69
    :cond_0
    :try_start_4
    invoke-static {v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    :catch_0
    :try_start_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    const-string v4, "com.google.android.gms"

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 78
    :cond_2
    :try_start_6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    .line 79
    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->asInterface:Ljava/lang/String;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->asInterface:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_4

    .line 82
    new-instance v5, Ldalvik/system/DelegateLastClassLoader;

    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->asInterface:Ljava/lang/String;

    .line 83
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 85
    :cond_4
    new-instance v5, Lo/RatingTags;

    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->asInterface:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lo/RatingTags;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 87
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Ljava/lang/ClassLoader;)V

    .line 88
    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;
    :try_end_6
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 90
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return v4

    .line 80
    :cond_5
    :goto_1
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return v4

    .line 92
    :catch_1
    :try_start_b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 94
    :goto_2
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_c
    monitor-exit v2

    throw v1
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    :goto_3
    :try_start_d
    const-string v2, "DynamiteModule"

    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to load module via V2: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 98
    :goto_4
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    .line 99
    :cond_6
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 100
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v0, :cond_8

    .line 101
    :try_start_f
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0
    :try_end_f
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    return p0

    :catch_5
    move-exception p1

    :try_start_10
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version: "

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 105
    :cond_8
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0

    :catchall_1
    move-exception p1

    .line 99
    monitor-exit v0

    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_2
    move-exception p1

    .line 1002
    invoke-static {p0, p1}, Lo/component16;->extraCallback(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 108
    throw p1
.end method

.method private static onNavigationEvent(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 158
    :try_start_0
    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    .line 160
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 163
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "DynamiteModule"

    .line 166
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Selected remote version of "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", version >= "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;)Lo/RatingTagsJsonAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 171
    invoke-interface {v1}, Lo/RatingTagsJsonAdapter;->ICustomTabsCallback()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 3004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p0}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 173
    invoke-interface {v1, v2, p1, p2}, Lo/RatingTagsJsonAdapter;->onPostMessage(Lo/getEventName;Ljava/lang/String;I)Lo/getEventName;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v2, "DynamiteModule"

    const-string v3, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 174
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p0}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 176
    invoke-interface {v1, v2, p1, p2}, Lo/RatingTagsJsonAdapter;->ICustomTabsCallback(Lo/getEventName;Ljava/lang/String;I)Lo/getEventName;

    move-result-object p1

    .line 177
    :goto_0
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 179
    new-instance p2, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {p2, p1}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 178
    :cond_2
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to load remote module."

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;B)V

    throw p1

    .line 169
    :cond_3
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to create IDynamiteLoader."

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;B)V

    throw p1

    .line 162
    :cond_4
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to determine which loading route to use."

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;B)V

    throw p1

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit v1

    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 5002
    invoke-static {p0, p1}, Lo/component16;->extraCallback(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 186
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to load remote module."

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw p0

    :catch_0
    move-exception p0

    .line 183
    throw p0

    :catch_1
    move-exception p0

    .line 182
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to load remote module."

    invoke-direct {p1, p2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw p1
.end method

.method private static onNavigationEvent()Ljava/lang/Boolean;
    .locals 3

    .line 241
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    .line 242
    :try_start_0
    sget v1, Lcom/google/android/gms/dynamite/DynamiteModule;->asBinder:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 243
    monitor-exit v0

    throw v1
.end method

.method private static onNavigationEvent(Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 245
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 249
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 250
    instance-of v2, v1, Lo/setPointsColor;

    if-eqz v2, :cond_1

    .line 251
    move-object p0, v1

    check-cast p0, Lo/setPointsColor;

    goto :goto_0

    .line 252
    :cond_1
    new-instance v1, Lo/setSelectedPointColor;

    invoke-direct {v1, p0}, Lo/setSelectedPointColor;-><init>(Landroid/os/IBinder;)V

    move-object p0, v1

    .line 253
    :goto_0
    sput-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->onRelationshipValidationResult:Lo/setPointsColor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    .line 256
    :goto_1
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate dynamite loader"

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v1
.end method


# virtual methods
.method public final extraCallback()Landroid/content/Context;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback:Landroid/content/Context;

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 260
    :goto_0
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate module class: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v1
.end method
