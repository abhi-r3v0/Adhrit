.class public final Lo/getTextClassifier$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:[Ljava/io/File;


# direct methods
.method synthetic constructor <init>(Lo/getTextClassifier;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    .line 720
    invoke-direct {p0, p5}, Lo/getTextClassifier$onNavigationEvent;-><init>([Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>([Ljava/io/File;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-object p1, p0, Lo/getTextClassifier$onNavigationEvent;->ICustomTabsCallback:[Ljava/io/File;

    return-void
.end method
