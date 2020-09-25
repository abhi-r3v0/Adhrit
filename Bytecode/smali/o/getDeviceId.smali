.class public final Lo/getDeviceId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/trackApiError$ICustomTabsCallback;


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lo/getDeviceId;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "application/cea-608"

    const/4 v2, 0x0

    .line 114
    invoke-static {v0, v1, v2, v0}, Lo/p$a;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lo/p$a;

    move-result-object v0

    .line 113
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-direct {p0, p1, v0}, Lo/getDeviceId;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Lo/getDeviceId;->ICustomTabsCallback:I

    .line 129
    iput-object p2, p0, Lo/getDeviceId;->extraCallback:Ljava/util/List;

    return-void
.end method

.method private ICustomTabsCallback(Lo/trackApiError$onPostMessage;)Lo/isSDKDebuggable;
    .locals 1

    .line 205
    new-instance v0, Lo/isSDKDebuggable;

    invoke-direct {p0, p1}, Lo/getDeviceId;->extraCallback(Lo/trackApiError$onPostMessage;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/isSDKDebuggable;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private extraCallback(Lo/trackApiError$onPostMessage;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/trackApiError$onPostMessage;",
            ")",
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x20

    .line 218
    invoke-direct {v0, v1}, Lo/getDeviceId;->onPostMessage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, v0, Lo/getDeviceId;->extraCallback:Ljava/util/List;

    return-object v1

    .line 221
    :cond_0
    new-instance v1, Lo/DreamAppGlideModule;

    move-object/from16 v2, p1

    iget-object v2, v2, Lo/trackApiError$onPostMessage;->onMessageChannelReady:[B

    invoke-direct {v1, v2}, Lo/DreamAppGlideModule;-><init>([B)V

    .line 222
    iget-object v2, v0, Lo/getDeviceId;->extraCallback:Ljava/util/List;

    .line 223
    :goto_0
    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v3

    if-lez v3, :cond_6

    .line 224
    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v3

    .line 225
    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    .line 226
    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v5

    add-int/2addr v5, v4

    const/16 v4, 0x86

    if-ne v3, v4, :cond_5

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_5

    const/4 v7, 0x3

    .line 232
    invoke-virtual {v1, v7}, Lo/DreamAppGlideModule;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object v13

    .line 233
    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v7

    and-int/lit16 v8, v7, 0x80

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_2

    and-int/lit8 v7, v7, 0x3f

    const-string v10, "application/cea-708"

    move v14, v7

    move-object v7, v10

    goto :goto_3

    :cond_2
    const-string v7, "application/cea-608"

    const/4 v14, 0x1

    .line 246
    :goto_3
    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v10

    int-to-byte v10, v10

    .line 248
    invoke-virtual {v1, v9}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    const/4 v11, 0x0

    if-eqz v8, :cond_4

    and-int/lit8 v8, v10, 0x40

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    .line 254
    :goto_4
    invoke-static {v9}, Lo/UpiAppResponse;->onMessageChannelReady(Z)Ljava/util/List;

    move-result-object v8

    move-object/from16 v18, v8

    goto :goto_5

    :cond_4
    move-object/from16 v18, v11

    :goto_5
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    const-wide v16, 0x7fffffffffffffffL

    move-object v9, v7

    .line 258
    invoke-static/range {v8 .. v18}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILo/generateLink;JLjava/util/List;)Lo/p$a;

    move-result-object v7

    .line 257
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 273
    :cond_5
    invoke-virtual {v1, v5}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method private onNavigationEvent(Lo/trackApiError$onPostMessage;)Lo/loadFile;
    .locals 1

    .line 192
    new-instance v0, Lo/loadFile;

    invoke-direct {p0, p1}, Lo/getDeviceId;->extraCallback(Lo/trackApiError$onPostMessage;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/loadFile;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private onPostMessage(I)Z
    .locals 1

    .line 280
    iget v0, p0, Lo/getDeviceId;->ICustomTabsCallback:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback(ILo/trackApiError$onPostMessage;)Lo/trackApiError;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    const/4 v1, 0x4

    if-eq p1, v1, :cond_f

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-eq p1, v2, :cond_d

    const/16 v2, 0x11

    if-eq p1, v2, :cond_b

    const/16 v0, 0x15

    if-eq p1, v0, :cond_a

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_8

    const/16 v0, 0x24

    if-eq p1, v0, :cond_7

    const/16 v0, 0x59

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_5

    const/16 v0, 0xac

    if-eq p1, v0, :cond_4

    const/16 v0, 0x81

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-eq p1, v0, :cond_2

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_3

    return-object v3

    :cond_0
    const/16 p1, 0x10

    .line 170
    invoke-direct {p0, p1}, Lo/getDeviceId;->onPostMessage(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v3

    :cond_1
    new-instance p1, Lo/getFileFromAssets;

    new-instance p2, Lo/prettyfyAndloadFile;

    invoke-direct {p2}, Lo/prettyfyAndloadFile;-><init>()V

    invoke-direct {p1, p2}, Lo/getFileFromAssets;-><init>(Lo/endTransaction;)V

    return-object p1

    :cond_2
    const/16 p1, 0x40

    .line 155
    invoke-direct {p0, p1}, Lo/getDeviceId;->onPostMessage(I)Z

    move-result p1

    if-nez p1, :cond_5

    return-object v3

    .line 151
    :cond_3
    new-instance p1, Lo/sendSMS;

    new-instance v0, Lo/TLSSocketFactory;

    iget-object p2, p2, Lo/trackApiError$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v0, p2}, Lo/TLSSocketFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lo/sendSMS;-><init>(Lo/getPermissions;)V

    return-object p1

    .line 153
    :cond_4
    new-instance p1, Lo/sendSMS;

    new-instance v0, Lo/PrettyfyUglifyJsFile;

    iget-object p2, p2, Lo/trackApiError$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v0, p2}, Lo/PrettyfyUglifyJsFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lo/sendSMS;-><init>(Lo/getPermissions;)V

    return-object p1

    .line 160
    :cond_5
    new-instance p1, Lo/sendSMS;

    new-instance v0, Lo/getIP;

    iget-object p2, p2, Lo/trackApiError$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v0, p2}, Lo/getIP;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lo/sendSMS;-><init>(Lo/getPermissions;)V

    return-object p1

    .line 175
    :cond_6
    new-instance p1, Lo/sendSMS;

    new-instance v0, Lo/getDeviceDetails;

    iget-object p2, p2, Lo/trackApiError$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-direct {v0, p2}, Lo/getDeviceDetails;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lo/sendSMS;-><init>(Lo/getPermissions;)V

    return-object p1

    .line 168
    :cond_7
    new-instance p1, Lo/sendSMS;

    new-instance v0, Lo/getSha256;

    invoke-direct {p0, p2}, Lo/getDeviceId;->onNavigationEvent(Lo/trackApiError$onPostMessage;)Lo/loadFile;

    move-result-object p2

    invoke-direct {v0, p2}, Lo/getSha256;-><init>(Lo/loadFile;)V

    invoke-direct {p1, v0}, Lo/sendSMS;-><init>(Lo/getPermissions;)V

    return-object p1

    .line 164
    :cond_8
    invoke-direct {p0, v1}, Lo/getDeviceId;->onPostMessage(I)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object v3

    :cond_9
    new-instance p1, Lo/sendSMS;

    new-instance v0, Lo/getFromSharedPrefs;

    .line 165
    invoke-direct {p0, p2}, Lo/getDeviceId;->onNavigationEvent(Lo/trackApiError$onPostMessage;)Lo/loadFile;

    move-result-object p2

    const/4 v1, 0x1

    .line 166
    invoke-direct {p0, v1}, Lo/getDeviceId;->onPostMessage(I)Z

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lo/getDeviceId;->onPostMessage(I)Z

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Lo/getFromSharedPrefs;-><init>(Lo/loadFile;ZZ)V

    invoke-direct {p1, v0}, Lo/sendSMS;-><init>(Lo/getPermissions;)V

    return-object p1

    .line 173
    :cond_a
    new-instance p1, Lo/sendSMS;

    new-instance p2, Lo/isDualSIM;

    invoke-direct {p2}, Lo/isDualSIM;-><init>()V

    invoke-direct {p1, p2}, Lo/sendSMS;-><init>(Lo/getPermissions;)V

    return-object p1

    .line 147
    :cond_b
    invoke-direct {p0, v0}, Lo/getDeviceId;->onPostMessage(I)Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v3

    :cond_c
    new-instance p1, Lo/sendSMS;

    new-instance v0, Lo/setInSharedPrefs;

    iget-object p2, p2, Lo/trackApiError$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v0, p2}, Lo/setInSharedPrefs;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lo/sendSMS;-><init>(Lo/getPermissions;)V

    return-object p1

    .line 144
    :cond_d
    invoke-direct {p0, v0}, Lo/getDeviceId;->onPostMessage(I)Z

    move-result p1

    if-eqz p1, :cond_e

    return-object v3

    :cond_e
    new-instance p1, Lo/sendSMS;

    new-instance v0, Lo/getSIMOperators;

    const/4 v1, 0x0

    iget-object p2, p2, Lo/trackApiError$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lo/getSIMOperators;-><init>(ZLjava/lang/String;)V

    invoke-direct {p1, v0}, Lo/sendSMS;-><init>(Lo/getPermissions;)V

    return-object p1

    .line 142
    :cond_f
    new-instance p1, Lo/sendSMS;

    new-instance v0, Lo/removeFromSharedPrefs;

    iget-object p2, p2, Lo/trackApiError$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v0, p2}, Lo/removeFromSharedPrefs;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lo/sendSMS;-><init>(Lo/getPermissions;)V

    return-object p1

    .line 162
    :cond_10
    new-instance p1, Lo/sendSMS;

    new-instance v0, Lo/checkPermission;

    invoke-direct {p0, p2}, Lo/getDeviceId;->ICustomTabsCallback(Lo/trackApiError$onPostMessage;)Lo/isSDKDebuggable;

    move-result-object p2

    invoke-direct {v0, p2}, Lo/checkPermission;-><init>(Lo/isSDKDebuggable;)V

    invoke-direct {p1, v0}, Lo/sendSMS;-><init>(Lo/getPermissions;)V

    return-object p1
.end method

.method public final onNavigationEvent()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lo/trackApiError;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method
