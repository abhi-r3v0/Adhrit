.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$database$logging$Logger$Level:[I

.field public static final browser_actions_context_menu_max_width:I = 0x7f070054

.field public static final browser_actions_context_menu_min_padding:I = 0x7f070055

.field public static final compat_button_inset_horizontal_material:I = 0x7f07005b

.field public static final compat_button_inset_vertical_material:I = 0x7f07005c

.field public static final compat_button_padding_horizontal_material:I = 0x7f07005d

.field public static final compat_button_padding_vertical_material:I = 0x7f07005e

.field public static final compat_control_corner_material:I = 0x7f07005f

.field public static final compat_notification_large_icon_max_height:I = 0x7f070060

.field public static final compat_notification_large_icon_max_width:I = 0x7f070061

.field public static final notification_action_icon_size:I = 0x7f0701c9

.field public static final notification_action_text_size:I = 0x7f0701ca

.field public static final notification_big_circle_margin:I = 0x7f0701cb

.field public static final notification_content_margin_start:I = 0x7f0701cc

.field public static final notification_large_icon_height:I = 0x7f0701cd

.field public static final notification_large_icon_width:I = 0x7f0701ce

.field public static final notification_main_column_padding_top:I = 0x7f0701cf

.field public static final notification_media_narrow_margin:I = 0x7f0701d0

.field public static final notification_right_icon_size:I = 0x7f0701d1

.field public static final notification_right_side_padding_top:I = 0x7f0701d2

.field public static final notification_small_icon_background_padding:I = 0x7f0701d3

.field public static final notification_small_icon_size_as_large:I = 0x7f0701d4

.field public static final notification_subtext_size:I = 0x7f0701d5

.field public static final notification_top_pad:I = 0x7f0701d6

.field public static final notification_top_pad_large_text:I = 0x7f0701d7


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/generateDefaultLayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/isOverflowMenuShowPending<",
            "Lo/MediaDescriptionCompat;",
            "Landroid/graphics/Path;",
            ">;>;"
        }
    .end annotation
.end field

.field public final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5045
    invoke-static {}, Lo/deleteLogFile$extraCallback;->values()[Lo/deleteLogFile$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->$SwitchMap$com$google$firebase$database$logging$Logger$Level:[I

    :try_start_0
    sget-object v1, Lo/deleteLogFile$extraCallback;->ERROR:Lo/deleteLogFile$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->$SwitchMap$com$google$firebase$database$logging$Logger$Level:[I

    sget-object v1, Lo/deleteLogFile$extraCallback;->WARN:Lo/deleteLogFile$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->$SwitchMap$com$google$firebase$database$logging$Logger$Level:[I

    sget-object v1, Lo/deleteLogFile$extraCallback;->INFO:Lo/deleteLogFile$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->$SwitchMap$com$google$firebase$database$logging$Logger$Level:[I

    sget-object v1, Lo/deleteLogFile$extraCallback;->DEBUG:Lo/deleteLogFile$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/generateDefaultLayoutParams;",
            ">;)V"
        }
    .end annotation

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    .line 1019
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 1020
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onPostMessage:Ljava/util/List;

    const/4 v0, 0x0

    .line 1021
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1022
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/generateDefaultLayoutParams;

    .line 1031
    iget-object v2, v2, Lo/generateDefaultLayoutParams;->extraCallback:Lo/onDetachedFromWindow;

    .line 2019
    new-instance v3, Lo/access$101;

    iget-object v2, v2, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v3, v2}, Lo/access$101;-><init>(Ljava/util/List;)V

    .line 1022
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/generateDefaultLayoutParams;

    .line 2035
    iget-object v1, v1, Lo/generateDefaultLayoutParams;->onMessageChannelReady:Lo/getTabContainer;

    .line 1024
    iget-object v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onPostMessage:Ljava/util/List;

    .line 3020
    new-instance v3, Lo/showOverflowMenu;

    iget-object v1, v1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v3, v1}, Lo/showOverflowMenu;-><init>(Ljava/util/List;)V

    .line 1024
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 4079
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4080
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    .line 4081
    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string p2, "ASCII"

    .line 4082
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 4083
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4085
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 4088
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 4089
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 4090
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x30

    .line 4091
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4094
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4097
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 4025
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.dreamplug.androidapp"

    const/16 v1, 0x40

    .line 4026
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 4028
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 4029
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 4030
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4031
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 4032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4033
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_0

    const-string v1, ":"

    .line 4034
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4035
    :cond_0
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 4036
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 4037
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4038
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4040
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4043
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "MD5"

    .line 4054
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 4055
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4056
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 4059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4060
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 4061
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 4062
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    const-string v4, "0"

    .line 4063
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 4064
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4066
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4069
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static onPostMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA-256"

    .line 4108
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4110
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 4115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 4117
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4118
    array-length v2, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    aget-byte v6, p0, v5

    const-string v7, "%02x"

    new-array v8, v3, [Ljava/lang/Object;

    and-int/lit16 v6, v6, 0xff

    .line 4119
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4120
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    return-object v0
.end method
