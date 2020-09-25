.class public final Lo/getDropDownWidth$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPrompt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDropDownWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field private static final extraCallback:[Ljava/lang/String;


# instance fields
.field private final onNavigationEvent:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_data"

    .line 123
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getDropDownWidth$ICustomTabsCallback;->extraCallback:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lo/getDropDownWidth$ICustomTabsCallback;->onNavigationEvent:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    .line 134
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lo/getDropDownWidth$ICustomTabsCallback;->onNavigationEvent:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lo/getDropDownWidth$ICustomTabsCallback;->extraCallback:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "kind = 1 AND video_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
