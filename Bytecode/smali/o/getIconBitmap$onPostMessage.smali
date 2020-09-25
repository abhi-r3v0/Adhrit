.class public final Lo/getIconBitmap$onPostMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getIconBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

.field public static final TextAppearance_Compat_Notification:I = 0x7f1401c0

.field public static final TextAppearance_Compat_Notification_Info:I = 0x7f1401c1

.field public static final TextAppearance_Compat_Notification_Line2:I = 0x7f1401c3

.field public static final TextAppearance_Compat_Notification_Time:I = 0x7f1401c6

.field public static final TextAppearance_Compat_Notification_Title:I = 0x7f1401c8

.field public static final Widget_Compat_NotificationActionContainer:I = 0x7f1402b7

.field public static final Widget_Compat_NotificationActionText:I = 0x7f1402b8

.field public static final Widget_Support_CoordinatorLayout:I = 0x7f140353


# instance fields
.field private final extraCallback:Landroid/content/Context;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onPostMessage:Lo/getIconBitmap$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5206
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->values()[Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    :try_start_0
    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->OK:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->CANCELLED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNKNOWN:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->DEADLINE_EXCEEDED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->RESOURCE_EXHAUSTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->INTERNAL:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNAUTHENTICATED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->INVALID_ARGUMENT:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->NOT_FOUND:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->ALREADY_EXISTS:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->PERMISSION_DENIED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->FAILED_PRECONDITION:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->ABORTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->OUT_OF_RANGE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNIMPLEMENTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->DATA_LOSS:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/getIconBitmap$onPostMessage;->extraCallback:Landroid/content/Context;

    .line 1036
    iput-object p2, p0, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 1038
    iput-object p1, p0, Lo/getIconBitmap$onPostMessage;->onPostMessage:Lo/getIconBitmap$onNavigationEvent;

    return-void

    .line 1040
    :cond_0
    new-instance p2, Lo/getIconBitmap$onNavigationEvent;

    invoke-direct {p2, p1}, Lo/getIconBitmap$onNavigationEvent;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/getIconBitmap$onPostMessage;->onPostMessage:Lo/getIconBitmap$onNavigationEvent;

    return-void
.end method

.method private static extraCallback(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3119
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 3120
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3121
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3125
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3126
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3132
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3137
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 3129
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3132
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3135
    :catch_2
    throw p0
.end method

.method public static onNavigationEvent(Ljava/io/InputStream;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    move-wide v2, p1

    :goto_1
    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 4067
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    :goto_2
    sub-long/2addr v2, v4

    goto :goto_1

    .line 4073
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const-wide/16 v4, 0x1

    goto :goto_2

    :cond_2
    sub-long/2addr p1, v2

    :cond_3
    return-wide p1

    .line 5111
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    const/4 p0, 0x0

    .line 4215
    throw p0
.end method

.method private onPostMessage()Lo/verifyNotNull;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/onContentScrollStarted;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 1097
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    .line 1098
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1101
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 1103
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    .line 1145
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "application/json"

    :cond_1
    const-string v2, "application/zip"

    .line 1151
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v1, "Handling zip response."

    .line 1152
    invoke-static {v1}, Lo/onContentScrollStarted;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 1153
    sget-object v1, Lo/setShowingForActionMode;->ICustomTabsCallback:Lo/setShowingForActionMode;

    .line 1154
    iget-object v3, p0, Lo/getIconBitmap$onPostMessage;->onPostMessage:Lo/getIconBitmap$onNavigationEvent;

    if-nez v3, :cond_2

    .line 1155
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v2}, Lo/createButton;->onPostMessage(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object v2

    goto :goto_0

    .line 1157
    :cond_2
    iget-object v2, p0, Lo/getIconBitmap$onPostMessage;->onPostMessage:Lo/getIconBitmap$onNavigationEvent;

    iget-object v3, p0, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lo/getIconBitmap$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;Ljava/io/InputStream;Lo/setShowingForActionMode;)Ljava/io/File;

    move-result-object v2

    .line 1158
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v3, v2}, Lo/createButton;->onPostMessage(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v1, "Received json response."

    .line 1161
    invoke-static {v1}, Lo/onContentScrollStarted;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 1162
    sget-object v1, Lo/setShowingForActionMode;->onNavigationEvent:Lo/setShowingForActionMode;

    .line 1163
    iget-object v3, p0, Lo/getIconBitmap$onPostMessage;->onPostMessage:Lo/getIconBitmap$onNavigationEvent;

    if-nez v3, :cond_4

    .line 1164
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v2}, Lo/createButton;->onNavigationEvent(Ljava/io/InputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object v2

    goto :goto_0

    .line 1166
    :cond_4
    iget-object v2, p0, Lo/getIconBitmap$onPostMessage;->onPostMessage:Lo/getIconBitmap$onNavigationEvent;

    iget-object v3, p0, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lo/getIconBitmap$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;Ljava/io/InputStream;Lo/setShowingForActionMode;)Ljava/io/File;

    move-result-object v2

    .line 1167
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v3, v2}, Lo/createButton;->onNavigationEvent(Ljava/io/InputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object v2

    .line 1171
    :goto_0
    iget-object v3, p0, Lo/getIconBitmap$onPostMessage;->onPostMessage:Lo/getIconBitmap$onNavigationEvent;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 2028
    iget-object v3, v2, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 1172
    iget-object v3, p0, Lo/getIconBitmap$onPostMessage;->onPostMessage:Lo/getIconBitmap$onNavigationEvent;

    iget-object v5, p0, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 2113
    invoke-static {v5, v1, v4}, Lo/getIconBitmap$onNavigationEvent;->extraCallback(Ljava/lang/String;Lo/setShowingForActionMode;Z)Ljava/lang/String;

    move-result-object v1

    .line 2114
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Lo/getIconBitmap$onNavigationEvent;->onPostMessage()Ljava/io/File;

    move-result-object v3

    invoke-direct {v5, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2115
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".temp"

    const-string v6, ""

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2116
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2117
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 2118
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Copying temp file to real file ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/onContentScrollStarted;->ICustomTabsCallback(Ljava/lang/String;)V

    if-nez v1, :cond_5

    .line 2120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Unable to rename cache file "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 1109
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Completed fetch from network. Success: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3028
    iget-object v3, v2, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 1109
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/onContentScrollStarted;->ICustomTabsCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    .line 1104
    :cond_7
    :goto_2
    :try_start_1
    invoke-static {v0}, Lo/getIconBitmap$onPostMessage;->extraCallback(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    new-instance v2, Lo/verifyNotNull;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to fetch "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lo/verifyNotNull;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 1112
    :try_start_2
    new-instance v2, Lo/verifyNotNull;

    invoke-direct {v2, v1}, Lo/verifyNotNull;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1114
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
.end method


# virtual methods
.method public ICustomTabsCallback()Lo/verifyNotNull;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 1086
    :try_start_0
    invoke-direct {p0}, Lo/getIconBitmap$onPostMessage;->onPostMessage()Lo/verifyNotNull;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1088
    new-instance v1, Lo/verifyNotNull;

    invoke-direct {v1, v0}, Lo/verifyNotNull;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method
