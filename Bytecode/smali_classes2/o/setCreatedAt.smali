.class public final Lo/setCreatedAt;
.super Ljava/lang/Object;

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final onNavigationEvent:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4000
    new-instance v0, Lo/setCreatedAt;

    invoke-direct {v0}, Lo/setCreatedAt;-><init>()V

    sput-object v0, Lo/setCreatedAt;->onNavigationEvent:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 3000
    sget-object p1, Lo/extraCallback$asBinder;->extraCallback:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
