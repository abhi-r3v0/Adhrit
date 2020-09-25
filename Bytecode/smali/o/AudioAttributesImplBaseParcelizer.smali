.class public Lo/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaMetadataCompatApi21$Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AudioAttributesImplBaseParcelizer$onMessageChannelReady;,
        Lo/AudioAttributesImplBaseParcelizer$extraCallback;
    }
.end annotation


# static fields
.field private static final mayLaunchUrl:[I


# instance fields
.field ICustomTabsCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/MediaBrowserCompat;",
            ">;"
        }
    .end annotation
.end field

.field ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

.field public ICustomTabsCallback$Stub$Proxy:Z

.field public ICustomTabsService:Z

.field private ICustomTabsService$Stub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/MediaBrowserCompat;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub$Proxy:Z

.field private IPostMessageService:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/MediaBrowserCompat;",
            ">;"
        }
    .end annotation
.end field

.field private IPostMessageService$Stub:Z

.field public asBinder:Z

.field public asInterface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/MediaBrowserCompat;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:Z

.field private final extraCommand:Landroid/content/res/Resources;

.field public getInterfaceDescriptor:Z

.field public newSession:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lo/getSessionToken;",
            ">;>;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/MediaBrowserCompat;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Lo/AudioAttributesImplBaseParcelizer$extraCallback;

.field public final onPostMessage:Landroid/content/Context;

.field public onRelationshipValidationResult:I

.field onTransact:Landroid/graphics/drawable/Drawable;

.field public postMessage:Z

.field requestPostMessageChannel:Lo/MediaBrowserCompat;

.field private updateVisuals:Z

.field private validateRelationship:Z

.field warmup:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 68
    fill-array-data v0, :array_0

    sput-object v0, Lo/AudioAttributesImplBaseParcelizer;->mayLaunchUrl:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lo/AudioAttributesImplBaseParcelizer;->onRelationshipValidationResult:I

    .line 159
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 161
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 163
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    .line 167
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService$Stub$Proxy:Z

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    .line 171
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 182
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->validateRelationship:Z

    .line 224
    iput-object p1, p0, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lo/AudioAttributesImplBaseParcelizer;->extraCommand:Landroid/content/res/Resources;

    .line 226
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    .line 228
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/AudioAttributesImplBaseParcelizer;->IPostMessageService:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lo/AudioAttributesImplBaseParcelizer;->extraCallback:Z

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    .line 233
    iput-boolean p1, p0, Lo/AudioAttributesImplBaseParcelizer;->asBinder:Z

    .line 1812
    iget-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->extraCommand:Landroid/content/res/Resources;

    .line 1813
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 1815
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iget-object v2, p0, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 1814
    invoke-static {v1, v2}, Lo/isTransportControlEnabled;->onPostMessage(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->IPostMessageService$Stub:Z

    return-void
.end method

.method private ICustomTabsCallback(ILandroid/view/KeyEvent;)Lo/MediaBrowserCompat;
    .locals 11

    .line 930
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    .line 931
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 932
    invoke-direct {p0, v0, p1, p2}, Lo/AudioAttributesImplBaseParcelizer;->extraCallback(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 934
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 938
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 939
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 941
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 944
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_1

    .line 946
    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat;

    return-object p1

    .line 949
    :cond_1
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback()Z

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_7

    .line 953
    invoke-virtual {v0, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/MediaBrowserCompat;

    if-eqz v4, :cond_2

    .line 954
    invoke-virtual {v7}, Lo/MediaBrowserCompat;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    .line 955
    :cond_2
    invoke-virtual {v7}, Lo/MediaBrowserCompat;->getNumericShortcut()C

    move-result v8

    .line 956
    :goto_1
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v5

    if-ne v8, v9, :cond_3

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v8, v9, :cond_4

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v4, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    const/16 v8, 0x43

    if-ne p1, v8, :cond_6

    :cond_5
    return-object v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method private ICustomTabsCallback(Lo/getItem;Lo/getSessionToken;)Z
    .locals 3

    .line 300
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 306
    invoke-interface {p2, p1}, Lo/getSessionToken;->onNavigationEvent(Lo/getItem;)Z

    move-result v1

    .line 309
    :cond_1
    iget-object p2, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 310
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getSessionToken;

    if-nez v2, :cond_3

    .line 312
    iget-object v2, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_2

    .line 314
    invoke-interface {v2, p1}, Lo/getSessionToken;->onNavigationEvent(Lo/getItem;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    return v1
.end method

.method private static extraCallback(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/MediaBrowserCompat;",
            ">;I)I"
        }
    .end annotation

    .line 847
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 848
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat;

    .line 6218
    iget v1, v1, Lo/MediaBrowserCompat;->onNavigationEvent:I

    if-gt v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private extraCallback(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/MediaBrowserCompat;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 882
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback()Z

    move-result v0

    .line 883
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v1

    .line 884
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 886
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    const/16 v4, 0x43

    if-nez v3, :cond_0

    if-eq p2, v4, :cond_0

    return-void

    .line 893
    :cond_0
    iget-object v3, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_7

    .line 895
    iget-object v7, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/MediaBrowserCompat;

    .line 896
    invoke-virtual {v7}, Lo/MediaBrowserCompat;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 897
    invoke-virtual {v7}, Lo/MediaBrowserCompat;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lo/AudioAttributesImplBaseParcelizer;

    invoke-direct {v8, p1, p2, p3}, Lo/AudioAttributesImplBaseParcelizer;->extraCallback(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 900
    invoke-virtual {v7}, Lo/MediaBrowserCompat;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lo/MediaBrowserCompat;->getNumericShortcut()C

    move-result v8

    :goto_1
    if-eqz v0, :cond_3

    .line 902
    invoke-virtual {v7}, Lo/MediaBrowserCompat;->getAlphabeticModifiers()I

    move-result v9

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Lo/MediaBrowserCompat;->getNumericModifiers()I

    move-result v9

    :goto_2
    const v10, 0x1100f

    and-int v11, v1, v10

    and-int/2addr v9, v10

    if-ne v11, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    .line 905
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v5

    if-eq v8, v9, :cond_5

    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_5

    if-eqz v0, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    if-ne p2, v4, :cond_6

    .line 910
    :cond_5
    invoke-virtual {v7}, Lo/MediaBrowserCompat;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 911
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private onMessageChannelReady(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .line 9826
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->extraCommand:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    .line 1225
    iput-object p5, p0, Lo/AudioAttributesImplBaseParcelizer;->warmup:Landroid/view/View;

    .line 1228
    iput-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    .line 1229
    iput-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->onTransact:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_0
    if-lez p1, :cond_1

    .line 1232
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1234
    iput-object p2, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 9830
    iget-object p1, p0, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 1238
    invoke-static {p1, p3}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/AudioAttributesImplBaseParcelizer;->onTransact:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    .line 1240
    iput-object p4, p0, Lo/AudioAttributesImplBaseParcelizer;->onTransact:Landroid/graphics/drawable/Drawable;

    .line 1244
    :cond_4
    :goto_1
    iput-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->warmup:Landroid/view/View;

    :goto_2
    const/4 p1, 0x0

    .line 1248
    invoke-virtual {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-void
.end method

.method private onNavigationEvent(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 10

    shr-int/lit8 v0, p3, 0x10

    if-ltz v0, :cond_0

    .line 2781
    sget-object v1, Lo/AudioAttributesImplBaseParcelizer;->mayLaunchUrl:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2785
    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    .line 443
    iget v9, p0, Lo/AudioAttributesImplBaseParcelizer;->onRelationshipValidationResult:I

    .line 3460
    new-instance v1, Lo/MediaBrowserCompat;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, v0

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lo/MediaBrowserCompat;-><init>(Lo/AudioAttributesImplBaseParcelizer;IIIILjava/lang/CharSequence;I)V

    .line 451
    iget-object p1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->extraCallback(Ljava/util/ArrayList;I)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 452
    invoke-virtual {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object v1

    .line 2782
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "order does not contain a valid category."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onNavigationEvent(Z)V
    .locals 4

    .line 284
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2078
    :cond_0
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2079
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 2080
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 2081
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    .line 287
    :cond_1
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 288
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getSessionToken;

    if-nez v3, :cond_2

    .line 290
    iget-object v3, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_2
    invoke-interface {v3, p1}, Lo/getSessionToken;->extraCallback(Z)V

    goto :goto_0

    .line 2086
    :cond_3
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 2088
    iget-boolean p1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    if-eqz p1, :cond_4

    .line 2089
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 2090
    iget-boolean p1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_4
    return-void
.end method

.method private onPostMessage(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    .line 580
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 584
    invoke-virtual {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(I)Lo/AudioAttributesImplBaseParcelizer;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 1295
    invoke-direct/range {v0 .. v5}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 3

    .line 1030
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService$Stub$Proxy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1032
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService$Stub$Proxy:Z

    .line 1033
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1034
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getSessionToken;

    if-nez v2, :cond_1

    .line 1036
    iget-object v2, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1038
    :cond_1
    invoke-interface {v2, p0, p1}, Lo/getSessionToken;->onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1041
    iput-boolean p1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService$Stub$Proxy:Z

    return-void
.end method

.method ICustomTabsCallback()Z
    .locals 1

    .line 792
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->updateVisuals:Z

    return v0
.end method

.method ICustomTabsCallback(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)Z
    .locals 1

    .line 834
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent:Lo/AudioAttributesImplBaseParcelizer$extraCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lo/AudioAttributesImplBaseParcelizer$extraCallback;->onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ICustomTabsCallback(Lo/MediaBrowserCompat;)Z
    .locals 5

    .line 1373
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->requestPostMessageChannel:Lo/MediaBrowserCompat;

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 11078
    :cond_0
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 11079
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 11080
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 11081
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    .line 1378
    :cond_1
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1379
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getSessionToken;

    if-nez v4, :cond_3

    .line 1381
    iget-object v4, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1382
    :cond_3
    invoke-interface {v4, p1}, Lo/getSessionToken;->onMessageChannelReady(Lo/MediaBrowserCompat;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11086
    :cond_4
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 11088
    iget-boolean p1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    if-eqz p1, :cond_5

    .line 11089
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 11090
    iget-boolean p1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_5
    if-eqz v2, :cond_6

    const/4 p1, 0x0

    .line 1389
    iput-object p1, p0, Lo/AudioAttributesImplBaseParcelizer;->requestPostMessageChannel:Lo/MediaBrowserCompat;

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v1
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 471
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->extraCommand:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 481
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->extraCommand:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 476
    invoke-direct {p0, p1, p2, p3, p4}, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 466
    invoke-direct {p0, v0, v0, v0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .line 520
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 522
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 523
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    .line 526
    invoke-virtual {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    .line 530
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 531
    new-instance v3, Landroid/content/Intent;

    .line 532
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 533
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 536
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lo/AudioAttributesImplBaseParcelizer;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 537
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 538
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_3

    .line 539
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v4, :cond_3

    .line 540
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v3, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 491
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->extraCommand:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lo/AudioAttributesImplBaseParcelizer;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 505
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->extraCommand:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/AudioAttributesImplBaseParcelizer;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 496
    invoke-direct {p0, p1, p2, p3, p4}, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat;

    .line 497
    new-instance p2, Lo/getItem;

    iget-object p3, p0, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lo/getItem;-><init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Lo/MediaBrowserCompat;)V

    .line 4428
    iput-object p2, p1, Lo/MediaBrowserCompat;->asInterface:Lo/getItem;

    .line 4430
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/getItem;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p0, v0, v0, v0, p1}, Lo/AudioAttributesImplBaseParcelizer;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public asBinder()Lo/AudioAttributesImplBaseParcelizer;
    .locals 0

    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 604
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->requestPostMessageChannel:Lo/MediaBrowserCompat;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p0, v0}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Lo/MediaBrowserCompat;)Z

    .line 607
    :cond_0
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x1

    .line 609
    invoke-virtual {p0, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-void
.end method

.method public clearHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 1213
    iput-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->onTransact:Landroid/graphics/drawable/Drawable;

    .line 1214
    iput-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    .line 1215
    iput-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->warmup:Landroid/view/View;

    const/4 v0, 0x0

    .line 1217
    invoke-virtual {p0, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1046
    invoke-virtual {p0, v0}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Z)V

    return-void
.end method

.method protected extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method protected final extraCallback(Ljava/lang/CharSequence;)Lo/AudioAttributesImplBaseParcelizer;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1259
    invoke-direct/range {v0 .. v5}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final extraCallback(Landroid/os/Bundle;)V
    .locals 7

    .line 375
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 377
    invoke-virtual {p0, v2}, Lo/AudioAttributesImplBaseParcelizer;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 378
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 379
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-nez v1, :cond_0

    .line 381
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 383
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 384
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const-string v5, "android:menu:expandedactionview"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 389
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lo/getItem;

    .line 390
    invoke-virtual {v3, p1}, Lo/AudioAttributesImplBaseParcelizer;->extraCallback(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 395
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    .line 693
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 695
    iget-object v2, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaBrowserCompat;

    .line 696
    invoke-virtual {v2}, Lo/MediaBrowserCompat;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    .line 698
    :cond_0
    invoke-virtual {v2}, Lo/MediaBrowserCompat;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 699
    invoke-virtual {v2}, Lo/MediaBrowserCompat;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 752
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public hasVisibleItems()Z
    .locals 5

    .line 675
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->postMessage:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 679
    :cond_0
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 682
    iget-object v4, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/MediaBrowserCompat;

    .line 683
    invoke-virtual {v4}, Lo/MediaBrowserCompat;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 757
    invoke-direct {p0, p1, p2}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(ILandroid/view/KeyEvent;)Lo/MediaBrowserCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer$extraCallback;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent:Lo/AudioAttributesImplBaseParcelizer$extraCallback;

    return-void
.end method

.method public final onMessageChannelReady(Lo/getSessionToken;)V
    .locals 3

    .line 275
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 276
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getSessionToken;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    .line 278
    :cond_1
    iget-object v2, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessageChannelReady()Z
    .locals 1

    .line 514
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->validateRelationship:Z

    return v0
.end method

.method public onMessageChannelReady(Lo/MediaBrowserCompat;)Z
    .locals 5

    .line 1351
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 10078
    :cond_0
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 10079
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 10080
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 10081
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    .line 1356
    :cond_1
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1357
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getSessionToken;

    if-nez v4, :cond_3

    .line 1359
    iget-object v4, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1360
    :cond_3
    invoke-interface {v4, p1}, Lo/getSessionToken;->extraCallback(Lo/MediaBrowserCompat;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10086
    :cond_4
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 10088
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    if-eqz v0, :cond_5

    .line 10089
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 10090
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {p0, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_5
    if-eqz v2, :cond_6

    .line 1367
    iput-object p1, p0, Lo/AudioAttributesImplBaseParcelizer;->requestPostMessageChannel:Lo/MediaBrowserCompat;

    :cond_6
    return v2
.end method

.method protected final onNavigationEvent(I)Lo/AudioAttributesImplBaseParcelizer;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1271
    invoke-direct/range {v0 .. v5}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected final onNavigationEvent(Landroid/graphics/drawable/Drawable;)Lo/AudioAttributesImplBaseParcelizer;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1283
    invoke-direct/range {v0 .. v5}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected final onNavigationEvent(Landroid/view/View;)Lo/AudioAttributesImplBaseParcelizer;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1307
    invoke-direct/range {v0 .. v5}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x1

    .line 1112
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->asBinder:Z

    .line 1113
    invoke-virtual {p0, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->extraCallback()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 409
    invoke-virtual {p0, v2}, Lo/AudioAttributesImplBaseParcelizer;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 410
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 411
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 412
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 414
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 415
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lo/getItem;

    .line 416
    invoke-virtual {v3, p1}, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "android:menu:expandedactionview"

    .line 420
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 422
    invoke-virtual {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 424
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_4
    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 2

    .line 1057
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1059
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->extraCallback:Z

    .line 1060
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->asBinder:Z

    .line 1063
    :cond_0
    invoke-direct {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent(Z)V

    return-void

    .line 1065
    :cond_1
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    if-eqz p1, :cond_2

    .line 1067
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    :cond_2
    return-void
.end method

.method public onPostMessage()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->IPostMessageService$Stub:Z

    return v0
.end method

.method public final onPostMessage(Landroid/view/MenuItem;Lo/getSessionToken;I)Z
    .locals 6

    .line 979
    check-cast p1, Lo/MediaBrowserCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 981
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 985
    :cond_0
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->onMessageChannelReady()Z

    move-result v1

    .line 8794
    iget-object v2, p1, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 988
    invoke-virtual {v2}, Lo/IMediaControllerCallback;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 989
    :goto_0
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->ICustomTabsCallback()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 990
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_8

    .line 992
    invoke-virtual {p0, v3}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Z)V

    goto :goto_2

    .line 994
    :cond_2
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_8

    .line 1014
    invoke-virtual {p0, v3}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    .line 997
    invoke-virtual {p0, v0}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Z)V

    .line 1000
    :cond_5
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_6

    .line 1001
    new-instance p3, Lo/getItem;

    .line 8830
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 1001
    invoke-direct {p3, v0, p0, p1}, Lo/getItem;-><init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Lo/MediaBrowserCompat;)V

    .line 9428
    iput-object p3, p1, Lo/MediaBrowserCompat;->asInterface:Lo/getItem;

    .line 9430
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Lo/getItem;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 1004
    :cond_6
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lo/getItem;

    if-eqz v4, :cond_7

    .line 1006
    invoke-virtual {v2, p1}, Lo/IMediaControllerCallback;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 1008
    :cond_7
    invoke-direct {p0, p1, p2}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Lo/getItem;Lo/getSessionToken;)Z

    move-result p1

    or-int/2addr v1, p1

    if-nez v1, :cond_8

    .line 1010
    invoke-virtual {p0, v3}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Z)V

    :cond_8
    :goto_2
    return v1

    :cond_9
    :goto_3
    return v0
.end method

.method public final onRelationshipValidationResult()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lo/MediaBrowserCompat;",
            ">;"
        }
    .end annotation

    .line 1118
    iget-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->extraCallback:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->IPostMessageService:Ljava/util/ArrayList;

    return-object v0

    .line 1121
    :cond_0
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->IPostMessageService:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 1123
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1126
    iget-object v3, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat;

    .line 1127
    invoke-virtual {v3}, Lo/MediaBrowserCompat;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lo/AudioAttributesImplBaseParcelizer;->IPostMessageService:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1130
    :cond_2
    iput-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->extraCallback:Z

    const/4 v0, 0x1

    .line 1131
    iput-boolean v0, p0, Lo/AudioAttributesImplBaseParcelizer;->asBinder:Z

    .line 1133
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->IPostMessageService:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onTransact()V
    .locals 7

    .line 1163
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->onRelationshipValidationResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 1165
    iget-boolean v1, p0, Lo/AudioAttributesImplBaseParcelizer;->asBinder:Z

    if-nez v1, :cond_0

    return-void

    .line 1171
    :cond_0
    iget-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1172
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/getSessionToken;

    if-nez v5, :cond_1

    .line 1174
    iget-object v5, p0, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1176
    :cond_1
    invoke-interface {v5}, Lo/getSessionToken;->extraCallback()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_5

    .line 1181
    iget-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 1182
    iget-object v1, p0, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 1183
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    .line 1185
    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/MediaBrowserCompat;

    .line 9702
    iget v5, v4, Lo/MediaBrowserCompat;->onTransact:I

    const/16 v6, 0x20

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 1187
    iget-object v5, p0, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1189
    :cond_4
    iget-object v5, p0, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1195
    :cond_5
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 1196
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 1197
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->onRelationshipValidationResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1199
    :cond_6
    iput-boolean v2, p0, Lo/AudioAttributesImplBaseParcelizer;->asBinder:Z

    return-void
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    .line 971
    invoke-virtual {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    .line 7975
    invoke-virtual {p0, p1, v0, p2}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Landroid/view/MenuItem;Lo/getSessionToken;I)Z

    move-result p1

    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 859
    invoke-direct {p0, p1, p2}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(ILandroid/view/KeyEvent;)Lo/MediaBrowserCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 6975
    invoke-virtual {p0, p1, p2, p3}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Landroid/view/MenuItem;Lo/getSessionToken;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 868
    invoke-virtual {p0, p2}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Z)V

    :cond_1
    return p1
.end method

.method public removeGroup(I)V
    .locals 5

    .line 4728
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4735
    iget-object v3, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat;

    .line 4737
    invoke-virtual {v3}, Lo/MediaBrowserCompat;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 557
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v0, :cond_2

    .line 559
    iget-object v3, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat;

    invoke-virtual {v3}, Lo/MediaBrowserCompat;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 561
    invoke-direct {p0, v2, v1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(IZ)V

    move v3, v4

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    .line 565
    invoke-virtual {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_3
    return-void
.end method

.method public removeItem(I)V
    .locals 3

    .line 4711
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4714
    iget-object v2, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaBrowserCompat;

    .line 4715
    invoke-virtual {v2}, Lo/MediaBrowserCompat;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const/4 p1, 0x1

    .line 549
    invoke-direct {p0, v1, p1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(IZ)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 6

    .line 632
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 635
    iget-object v3, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat;

    .line 636
    invoke-virtual {v3}, Lo/MediaBrowserCompat;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 5605
    iget v4, v3, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v4, v4, -0x5

    if-eqz p3, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v4, v5

    iput v4, v3, Lo/MediaBrowserCompat;->onTransact:I

    .line 638
    invoke-virtual {v3, p2}, Lo/MediaBrowserCompat;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 0

    .line 510
    iput-boolean p1, p0, Lo/AudioAttributesImplBaseParcelizer;->validateRelationship:Z

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    .line 663
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 666
    iget-object v2, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaBrowserCompat;

    .line 667
    invoke-virtual {v2}, Lo/MediaBrowserCompat;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 668
    invoke-virtual {v2, p2}, Lo/MediaBrowserCompat;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6

    .line 645
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 652
    iget-object v4, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/MediaBrowserCompat;

    .line 653
    invoke-virtual {v4}, Lo/MediaBrowserCompat;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 654
    invoke-virtual {v4, p2}, Lo/MediaBrowserCompat;->extraCallback(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 658
    invoke-virtual {p0, v3}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_2
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 762
    iput-boolean p1, p0, Lo/AudioAttributesImplBaseParcelizer;->updateVisuals:Z

    const/4 p1, 0x0

    .line 764
    invoke-virtual {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 747
    iget-object v0, p0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
