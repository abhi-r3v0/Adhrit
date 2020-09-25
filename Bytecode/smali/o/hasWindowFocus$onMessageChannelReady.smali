.class final Lo/hasWindowFocus$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasWindowFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AppCompatImageView<",
        "TDataT;>;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:[Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

.field private volatile ICustomTabsService:Lo/AppCompatImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AppCompatImageView<",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final asBinder:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final asInterface:I

.field private final extraCallback:Lo/setNavigationContentDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setNavigationContentDescription<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/setNavigationContentDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setNavigationContentDescription<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:Landroid/net/Uri;

.field private final onRelationshipValidationResult:I

.field private volatile onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_data"

    .line 94
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/hasWindowFocus$onMessageChannelReady;->ICustomTabsCallback:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lo/setNavigationContentDescription;Lo/setNavigationContentDescription;Landroid/net/Uri;IILo/applyFrameworkTintUsingColorFilter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setNavigationContentDescription<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lo/setNavigationContentDescription<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Landroid/net/Uri;",
            "II",
            "Lo/applyFrameworkTintUsingColorFilter;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/hasWindowFocus$onMessageChannelReady;->onNavigationEvent:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lo/hasWindowFocus$onMessageChannelReady;->extraCallback:Lo/setNavigationContentDescription;

    .line 119
    iput-object p3, p0, Lo/hasWindowFocus$onMessageChannelReady;->onMessageChannelReady:Lo/setNavigationContentDescription;

    .line 120
    iput-object p4, p0, Lo/hasWindowFocus$onMessageChannelReady;->onPostMessage:Landroid/net/Uri;

    .line 121
    iput p5, p0, Lo/hasWindowFocus$onMessageChannelReady;->asInterface:I

    .line 122
    iput p6, p0, Lo/hasWindowFocus$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 123
    iput-object p7, p0, Lo/hasWindowFocus$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

    .line 124
    iput-object p8, p0, Lo/hasWindowFocus$onMessageChannelReady;->asBinder:Ljava/lang/Class;

    return-void
.end method

.method private onMessageChannelReady(Landroid/net/Uri;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 197
    :try_start_0
    iget-object v1, p0, Lo/hasWindowFocus$onMessageChannelReady;->onNavigationEvent:Landroid/content/Context;

    .line 199
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lo/hasWindowFocus$onMessageChannelReady;->ICustomTabsCallback:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    .line 200
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_data"

    .line 209
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    .line 211
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "File path was empty in media store for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_2
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Failed to media store entry for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    .line 216
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lo/hasWindowFocus$onMessageChannelReady;->onTransact:Z

    .line 175
    iget-object v0, p0, Lo/hasWindowFocus$onMessageChannelReady;->ICustomTabsService:Lo/AppCompatImageView;

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lo/AppCompatImageView;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method public final extraCallback()Lo/setImageURI;
    .locals 1

    .line 190
    sget-object v0, Lo/setImageURI;->onNavigationEvent:Lo/setImageURI;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lo/hasWindowFocus$onMessageChannelReady;->asBinder:Ljava/lang/Class;

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 1

    .line 166
    iget-object v0, p0, Lo/hasWindowFocus$onMessageChannelReady;->ICustomTabsService:Lo/AppCompatImageView;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lo/AppCompatImageView;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getTintList;",
            "Lo/AppCompatImageView$ICustomTabsCallback<",
            "-TDataT;>;)V"
        }
    .end annotation

    .line 1156
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lo/hasWindowFocus$onMessageChannelReady;->extraCallback:Lo/setNavigationContentDescription;

    iget-object v1, p0, Lo/hasWindowFocus$onMessageChannelReady;->onPostMessage:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lo/hasWindowFocus$onMessageChannelReady;->onMessageChannelReady(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    iget v2, p0, Lo/hasWindowFocus$onMessageChannelReady;->asInterface:I

    iget v3, p0, Lo/hasWindowFocus$onMessageChannelReady;->onRelationshipValidationResult:I

    iget-object v4, p0, Lo/hasWindowFocus$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

    invoke-interface {v0, v1, v2, v3, v4}, Lo/setNavigationContentDescription;->extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;

    move-result-object v0

    goto :goto_2

    .line 1222
    :cond_0
    iget-object v0, p0, Lo/hasWindowFocus$onMessageChannelReady;->onNavigationEvent:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lo/hasWindowFocus$onMessageChannelReady;->onPostMessage:Landroid/net/Uri;

    invoke-static {v0}, Landroid/provider/MediaStore;->setRequireOriginal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/hasWindowFocus$onMessageChannelReady;->onPostMessage:Landroid/net/Uri;

    .line 1160
    :goto_1
    iget-object v1, p0, Lo/hasWindowFocus$onMessageChannelReady;->onMessageChannelReady:Lo/setNavigationContentDescription;

    iget v2, p0, Lo/hasWindowFocus$onMessageChannelReady;->asInterface:I

    iget v3, p0, Lo/hasWindowFocus$onMessageChannelReady;->onRelationshipValidationResult:I

    iget-object v4, p0, Lo/hasWindowFocus$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

    invoke-interface {v1, v0, v2, v3, v4}, Lo/setNavigationContentDescription;->extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    .line 1151
    iget-object v0, v0, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_4

    .line 133
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to build fetcher for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/hasWindowFocus$onMessageChannelReady;->onPostMessage:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->extraCallback(Ljava/lang/Exception;)V

    return-void

    .line 137
    :cond_4
    iput-object v0, p0, Lo/hasWindowFocus$onMessageChannelReady;->ICustomTabsService:Lo/AppCompatImageView;

    .line 138
    iget-boolean v1, p0, Lo/hasWindowFocus$onMessageChannelReady;->onTransact:Z

    if-eqz v1, :cond_5

    .line 139
    invoke-virtual {p0}, Lo/hasWindowFocus$onMessageChannelReady;->ICustomTabsCallback()V

    return-void

    .line 141
    :cond_5
    invoke-interface {v0, p1, p2}, Lo/AppCompatImageView;->onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 144
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->extraCallback(Ljava/lang/Exception;)V

    return-void
.end method
