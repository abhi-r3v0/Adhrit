.class public final Lo/setDefaultImpl;
.super Landroid/view/MenuInflater;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDefaultImpl$extraCallback;,
        Lo/setDefaultImpl$onNavigationEvent;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final onNavigationEvent:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final extraCallback:[Ljava/lang/Object;

.field onMessageChannelReady:Landroid/content/Context;

.field final onPostMessage:[Ljava/lang/Object;

.field onRelationshipValidationResult:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 83
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    .line 85
    sput-object v0, Lo/setDefaultImpl;->ICustomTabsCallback:[Ljava/lang/Class;

    sput-object v0, Lo/setDefaultImpl;->onNavigationEvent:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 101
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 102
    iput-object p1, p0, Lo/setDefaultImpl;->onMessageChannelReady:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 103
    iput-object v0, p0, Lo/setDefaultImpl;->extraCallback:[Ljava/lang/Object;

    .line 104
    iput-object v0, p0, Lo/setDefaultImpl;->onPostMessage:[Ljava/lang/Object;

    return-void
.end method

.method private extraCallback(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Lo/setDefaultImpl$extraCallback;

    invoke-direct {v0, p0, p3}, Lo/setDefaultImpl$extraCallback;-><init>(Lo/setDefaultImpl;Landroid/view/Menu;)V

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    :cond_0
    const/4 v1, 0x2

    const-string v2, "menu"

    const/4 v3, 0x1

    if-ne p3, v1, :cond_2

    .line 155
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    .line 156
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto :goto_0

    .line 162
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Expecting menu, got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    if-ne p3, v3, :cond_0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-nez v6, :cond_e

    if-eq p3, v3, :cond_d

    const-string v9, "item"

    const-string v10, "group"

    if-eq p3, v1, :cond_8

    const/4 v11, 0x3

    if-eq p3, v11, :cond_3

    goto/16 :goto_2

    .line 193
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    if-eqz v7, :cond_4

    .line 194
    invoke-virtual {p3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v8, v4

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 197
    :cond_4
    invoke-virtual {p3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1356
    iput v5, v0, Lo/setDefaultImpl$extraCallback;->extraCallback:I

    .line 1357
    iput v5, v0, Lo/setDefaultImpl$extraCallback;->onMessageChannelReady:I

    .line 1358
    iput v5, v0, Lo/setDefaultImpl$extraCallback;->onPostMessage:I

    .line 1359
    iput v5, v0, Lo/setDefaultImpl$extraCallback;->onNavigationEvent:I

    .line 1360
    iput-boolean v3, v0, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback:Z

    .line 1361
    iput-boolean v3, v0, Lo/setDefaultImpl$extraCallback;->asInterface:Z

    goto :goto_2

    .line 199
    :cond_5
    invoke-virtual {p3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1542
    iget-boolean p3, v0, Lo/setDefaultImpl$extraCallback;->onRelationshipValidationResult:Z

    if-nez p3, :cond_c

    .line 203
    iget-object p3, v0, Lo/setDefaultImpl$extraCallback;->onTransact:Lo/IMediaControllerCallback;

    if-eqz p3, :cond_6

    iget-object p3, v0, Lo/setDefaultImpl$extraCallback;->onTransact:Lo/IMediaControllerCallback;

    .line 204
    invoke-virtual {p3}, Lo/IMediaControllerCallback;->hasSubMenu()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 205
    invoke-virtual {v0}, Lo/setDefaultImpl$extraCallback;->onMessageChannelReady()Landroid/view/SubMenu;

    goto :goto_2

    .line 207
    :cond_6
    invoke-virtual {v0}, Lo/setDefaultImpl$extraCallback;->onPostMessage()V

    goto :goto_2

    .line 210
    :cond_7
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    if-nez v7, :cond_c

    .line 175
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    .line 176
    invoke-virtual {p3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 177
    invoke-virtual {v0, p2}, Lo/setDefaultImpl$extraCallback;->onPostMessage(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 178
    :cond_9
    invoke-virtual {p3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 179
    invoke-virtual {v0, p2}, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 180
    :cond_a
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 182
    invoke-virtual {v0}, Lo/setDefaultImpl$extraCallback;->onMessageChannelReady()Landroid/view/SubMenu;

    move-result-object p3

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lo/setDefaultImpl;->extraCallback(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_2

    :cond_b
    move-object v8, p3

    const/4 v7, 0x1

    .line 219
    :cond_c
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto/16 :goto_1

    .line 216
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected end of document"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    return-void
.end method


# virtual methods
.method public final inflate(ILandroid/view/Menu;)V
    .locals 3

    const-string v0, "Error inflating menu XML"

    .line 119
    instance-of v1, p2, Lo/MediaMetadataCompatApi21$Builder;

    if-nez v1, :cond_0

    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 126
    :try_start_0
    iget-object v2, p0, Lo/setDefaultImpl;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 127
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 129
    invoke-direct {p0, v1, p1, p2}, Lo/setDefaultImpl;->extraCallback(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 135
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    :try_start_1
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 131
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    .line 135
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 136
    :cond_2
    throw p1
.end method

.method final onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 231
    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object p1

    .line 234
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 235
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method
