.class public final Lo/toDebugString;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/toDebugString$onMessageChannelReady;,
        Lo/toDebugString$extraCallback;,
        Lo/toDebugString$onPostMessage;,
        Lo/toDebugString$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:[C

.field public asInterface:I

.field public final extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    .line 1043
    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/toDebugString;->extraCallback:Ljava/lang/String;

    .line 1044
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lo/toDebugString;->onPostMessage:I

    return-void
.end method

.method private onMessageChannelReady(I)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 1312
    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_6

    .line 1318
    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char p1, v1, p1

    const/16 v1, 0x46

    const/16 v3, 0x66

    const/16 v4, 0x41

    const/16 v5, 0x39

    const/16 v6, 0x61

    const/16 v7, 0x30

    if-lt p1, v7, :cond_0

    if-gt p1, v5, :cond_0

    sub-int/2addr p1, v7

    goto :goto_0

    :cond_0
    if-lt p1, v6, :cond_1

    if-gt p1, v3, :cond_1

    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    :cond_1
    if-lt p1, v4, :cond_5

    if-gt p1, v1, :cond_5

    add-int/lit8 p1, p1, -0x37

    .line 1329
    :goto_0
    iget-object v8, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v0, v8, v0

    if-lt v0, v7, :cond_2

    if-gt v0, v5, :cond_2

    sub-int/2addr v0, v7

    goto :goto_1

    :cond_2
    if-lt v0, v6, :cond_3

    if-gt v0, v3, :cond_3

    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    :cond_3
    if-lt v0, v4, :cond_4

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x37

    :goto_1
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    .line 1337
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/toDebugString;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1326
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/toDebugString;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1313
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/toDebugString;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onPostMessage()C
    .locals 9

    .line 1264
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    invoke-direct {p0, v0}, Lo/toDebugString;->onMessageChannelReady(I)I

    move-result v0

    .line 1265
    iget v1, p0, Lo/toDebugString;->ICustomTabsCallback:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lo/toDebugString;->ICustomTabsCallback:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    int-to-char v0, v0

    return v0

    :cond_0
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_7

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_7

    const/16 v3, 0xdf

    if-gt v0, v3, :cond_1

    and-int/lit8 v0, v0, 0x1f

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0xef

    if-gt v0, v3, :cond_2

    const/4 v3, 0x2

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    and-int/lit8 v0, v0, 0x7

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_6

    .line 1285
    iget v6, p0, Lo/toDebugString;->ICustomTabsCallback:I

    add-int/2addr v6, v2

    iput v6, p0, Lo/toDebugString;->ICustomTabsCallback:I

    .line 1286
    iget v7, p0, Lo/toDebugString;->onPostMessage:I

    if-eq v6, v7, :cond_5

    iget-object v7, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v7, v7, v6

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 1289
    iput v6, p0, Lo/toDebugString;->ICustomTabsCallback:I

    .line 1291
    invoke-direct {p0, v6}, Lo/toDebugString;->onMessageChannelReady(I)I

    move-result v6

    .line 1292
    iget v7, p0, Lo/toDebugString;->ICustomTabsCallback:I

    add-int/2addr v7, v2

    iput v7, p0, Lo/toDebugString;->ICustomTabsCallback:I

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_4

    return v4

    :cond_4
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return v4

    :cond_6
    int-to-char v0, v0

    return v0

    :cond_7
    return v4
.end method


# virtual methods
.method public ICustomTabsCallback()Ljava/lang/String;
    .locals 6

    .line 1138
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lo/toDebugString;->onPostMessage:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_7

    .line 1143
    iput v0, p0, Lo/toDebugString;->onNavigationEvent:I

    add-int/lit8 v0, v0, 0x1

    .line 1144
    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    .line 1149
    :goto_0
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_3

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_3

    aget-char v2, v1, v0

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 1155
    :cond_0
    aget-char v2, v1, v0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1

    .line 1156
    iput v0, p0, Lo/toDebugString;->onMessageChannelReady:I

    add-int/lit8 v0, v0, 0x1

    .line 1157
    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    .line 1160
    :goto_1
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    goto :goto_1

    .line 1163
    :cond_1
    aget-char v2, v1, v0

    const/16 v5, 0x41

    if-lt v2, v5, :cond_2

    aget-char v2, v1, v0

    const/16 v5, 0x46

    if-gt v2, v5, :cond_2

    .line 1164
    aget-char v2, v1, v0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 1167
    :cond_2
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    goto :goto_0

    .line 1151
    :cond_3
    :goto_2
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iput v0, p0, Lo/toDebugString;->onMessageChannelReady:I

    .line 1172
    :cond_4
    iget v0, p0, Lo/toDebugString;->onMessageChannelReady:I

    iget v1, p0, Lo/toDebugString;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_6

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_6

    .line 1178
    div-int/lit8 v2, v0, 0x2

    new-array v3, v2, [B

    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    :goto_3
    if-ge v4, v2, :cond_5

    .line 1180
    invoke-direct {p0, v1}, Lo/toDebugString;->onMessageChannelReady(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1183
    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    iget v3, p0, Lo/toDebugString;->onNavigationEvent:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 1174
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/toDebugString;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/toDebugString;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extraCallback()Ljava/lang/String;
    .locals 8

    .line 1188
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iput v0, p0, Lo/toDebugString;->onNavigationEvent:I

    .line 1189
    iput v0, p0, Lo/toDebugString;->onMessageChannelReady:I

    .line 1191
    :cond_0
    :goto_0
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    if-lt v0, v1, :cond_1

    .line 1193
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    iget v2, p0, Lo/toDebugString;->onNavigationEvent:I

    iget v3, p0, Lo/toDebugString;->onMessageChannelReady:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 1196
    :cond_1
    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const/16 v5, 0x3b

    const/16 v6, 0x20

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    .line 1225
    iget v2, p0, Lo/toDebugString;->onMessageChannelReady:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/toDebugString;->onMessageChannelReady:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 1226
    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    goto :goto_0

    .line 1204
    :cond_2
    iget v0, p0, Lo/toDebugString;->onMessageChannelReady:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lo/toDebugString;->onMessageChannelReady:I

    invoke-virtual {p0}, Lo/toDebugString;->onMessageChannelReady()C

    move-result v2

    aput-char v2, v1, v0

    .line 1205
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    goto :goto_0

    .line 1201
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    iget v2, p0, Lo/toDebugString;->onNavigationEvent:I

    iget v3, p0, Lo/toDebugString;->onMessageChannelReady:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 1210
    :cond_4
    iget v2, p0, Lo/toDebugString;->onMessageChannelReady:I

    iput v2, p0, Lo/toDebugString;->asInterface:I

    add-int/lit8 v0, v0, 0x1

    .line 1212
    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    add-int/lit8 v0, v2, 0x1

    .line 1213
    iput v0, p0, Lo/toDebugString;->onMessageChannelReady:I

    aput-char v6, v1, v2

    .line 1215
    :goto_1
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v2, v1, v0

    if-ne v2, v6, :cond_5

    .line 1216
    iget v2, p0, Lo/toDebugString;->onMessageChannelReady:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lo/toDebugString;->onMessageChannelReady:I

    aput-char v6, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 1215
    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    goto :goto_1

    .line 1218
    :cond_5
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_6

    aget-char v2, v1, v0

    if-eq v2, v4, :cond_6

    aget-char v0, v1, v0

    if-ne v0, v5, :cond_0

    .line 1221
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    iget v2, p0, Lo/toDebugString;->onNavigationEvent:I

    iget v3, p0, Lo/toDebugString;->asInterface:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public onMessageChannelReady()C
    .locals 3

    .line 1233
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    .line 1234
    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    if-eq v0, v1, :cond_1

    .line 1238
    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1257
    invoke-direct {p0}, Lo/toDebugString;->onPostMessage()C

    move-result v0

    return v0

    .line 1253
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    iget v1, p0, Lo/toDebugString;->ICustomTabsCallback:I

    aget-char v0, v0, v1

    return v0

    .line 1235
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/toDebugString;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onNavigationEvent()Ljava/lang/String;
    .locals 6

    .line 1051
    :goto_0
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    goto :goto_0

    .line 1053
    :cond_0
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1058
    :cond_1
    iput v0, p0, Lo/toDebugString;->onNavigationEvent:I

    add-int/lit8 v0, v0, 0x1

    .line 1061
    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    .line 1062
    :goto_1
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v4, v1, v0

    if-eq v4, v3, :cond_2

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    goto :goto_1

    .line 1066
    :cond_2
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_b

    .line 1071
    iput v0, p0, Lo/toDebugString;->onMessageChannelReady:I

    .line 1075
    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_5

    .line 1076
    :goto_2
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v5, v1, v0

    if-eq v5, v3, :cond_3

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    goto :goto_2

    .line 1079
    :cond_3
    iget-object v0, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    iget v1, p0, Lo/toDebugString;->ICustomTabsCallback:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_4

    iget v0, p0, Lo/toDebugString;->onPostMessage:I

    if-eq v1, v0, :cond_4

    goto :goto_3

    .line 1080
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/toDebugString;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_5
    :goto_3
    iget v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/toDebugString;->ICustomTabsCallback:I

    .line 1088
    iget v1, p0, Lo/toDebugString;->onPostMessage:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    aget-char v0, v1, v0

    if-eq v0, v2, :cond_5

    .line 1093
    :cond_6
    iget v0, p0, Lo/toDebugString;->onMessageChannelReady:I

    iget v1, p0, Lo/toDebugString;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_a

    iget-object v0, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_7

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_a

    :cond_7
    iget-object v0, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    iget v1, p0, Lo/toDebugString;->onNavigationEvent:I

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_a

    :cond_8
    iget-object v0, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    iget v1, p0, Lo/toDebugString;->onNavigationEvent:I

    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_9

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_a

    .line 1097
    :cond_9
    iget v0, p0, Lo/toDebugString;->onNavigationEvent:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/toDebugString;->onNavigationEvent:I

    .line 1100
    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/toDebugString;->ICustomTabsCallback$Stub:[C

    iget v2, p0, Lo/toDebugString;->onNavigationEvent:I

    iget v3, p0, Lo/toDebugString;->onMessageChannelReady:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 1067
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/toDebugString;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
