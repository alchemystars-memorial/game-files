.class Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field final a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field final b:I

.field c:I

.field d:Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->b:I

    iput p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->d:Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;

    return-void
.end method
